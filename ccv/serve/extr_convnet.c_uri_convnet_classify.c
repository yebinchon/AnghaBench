
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int len; int written; char* data; int on_release; } ;
typedef TYPE_3__ ebb_buf ;
struct TYPE_15__ {TYPE_4__* data; int written; } ;
struct TYPE_18__ {scalar_t__ top; TYPE_2__* convnet_and_words; TYPE_1__ source; int param_parser; } ;
typedef TYPE_4__ convnet_param_parser_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_19__ {int input; } ;
typedef TYPE_5__ ccv_convnet_t ;
struct TYPE_20__ {int id; double confidence; } ;
typedef TYPE_6__ ccv_classification_t ;
struct TYPE_21__ {scalar_t__ rnum; } ;
typedef TYPE_7__ ccv_array_t ;
struct TYPE_16__ {TYPE_7__* words; TYPE_5__* convnet; } ;


 int CCV_IO_ANY_STREAM ;
 int CCV_IO_RGB_COLOR ;
 int ccv_array_free (TYPE_7__*) ;
 scalar_t__ ccv_array_get (TYPE_7__*,int) ;
 int ccv_convnet_classify (TYPE_5__*,int **,int,TYPE_7__**,scalar_t__,int) ;
 int ccv_convnet_input_formation (int ,int *,int **) ;
 int ccv_matrix_free (int *) ;
 int ccv_read (TYPE_4__*,int **,int,int ) ;
 char* ebb_http_header ;
 int free (TYPE_4__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,size_t) ;
 int memmove (char*,char*,size_t) ;
 int param_parser_terminate (int *) ;
 scalar_t__ realloc (char*,int) ;
 int snprintf (char*,int,char*,...) ;
 size_t strnlen (char*,int) ;
 int uri_ebb_buf_free ;

int uri_convnet_classify(const void* context, const void* parsed, ebb_buf* buf)
{
 if (!parsed)
  return -1;
 convnet_param_parser_t* parser = (convnet_param_parser_t*)parsed;
 param_parser_terminate(&parser->param_parser);
 if (parser->source.data == 0)
 {
  free(parser);
  return -1;
 }
 if (parser->convnet_and_words == 0)
 {
  free(parser->source.data);
  free(parser);
  return -1;
 }
 if (parser->top <= 0 || parser->top > parser->convnet_and_words->words->rnum)
 {
  free(parser->source.data);
  free(parser);
  return -1;
 }
 ccv_convnet_t* convnet = parser->convnet_and_words->convnet;
 if (convnet == 0)
 {
  free(parser->source.data);
  free(parser);
  return -1;
 }
 ccv_dense_matrix_t* image = 0;
 ccv_read(parser->source.data, &image, CCV_IO_ANY_STREAM | CCV_IO_RGB_COLOR, parser->source.written);
 free(parser->source.data);
 if (image == 0)
 {
  free(parser);
  return -1;
 }
 ccv_dense_matrix_t* input = 0;
 ccv_convnet_input_formation(convnet->input, image, &input);
 ccv_matrix_free(image);
 ccv_array_t* rank = 0;
 ccv_convnet_classify(convnet, &input, 1, &rank, parser->top, 1);

 buf->len = 192 + rank->rnum * 30 + 2;
 char* data = (char*)malloc(buf->len);
 data[0] = '[';
 buf->written = 1;
 int i;
 for (i = 0; i < rank->rnum; i++)
 {
  char cell[1024];
  ccv_classification_t* classification = (ccv_classification_t*)ccv_array_get(rank, i);
  char* word = *(char**)ccv_array_get(parser->convnet_and_words->words, classification->id);
  snprintf(cell, 1024, "{\"word\":\"%s\",\"confidence\":%f}", word, classification->confidence);
  size_t len = strnlen(cell, 1024);
  while (buf->written + len + 1 >= buf->len)
  {
   buf->len = (buf->len * 3 + 1) / 2;
   data = (char*)realloc(data, buf->len);
  }
  memcpy(data + buf->written, cell, len);
  buf->written += len + 1;
  data[buf->written - 1] = (i == rank->rnum - 1) ? ']' : ',';
 }

 char http_header[192];
 snprintf(http_header, 192, ebb_http_header, buf->written + 1);
 size_t len = strnlen(http_header, 192);
 if (buf->written + len + 1 >= buf->len)
 {
  buf->len = buf->written + len + 1;
  data = (char*)realloc(data, buf->len);
 }
 memmove(data + len, data, buf->written);
 memcpy(data, http_header, len);
 buf->written += len + 1;
 data[buf->written - 1] = '\n';
 buf->data = data;
 buf->len = buf->written;
 buf->on_release = uri_ebb_buf_free;
 ccv_array_free(rank);
 ccv_matrix_free(input);
 free(parser);
 return 0;
}
