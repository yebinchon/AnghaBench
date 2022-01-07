
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* filename; int kind; char* data; int name; int encoder; int headers; int type; int size; struct TYPE_5__* prev; } ;
typedef TYPE_1__ tool_mime ;
typedef int curl_seek_callback ;
typedef int curl_read_callback ;
typedef int curl_mimepart ;
typedef int curl_mime ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int CURL_ZERO_TERMINATED ;






 scalar_t__ convert_to_network (char*,size_t) ;
 int * curl_mime_addpart (int *) ;
 scalar_t__ curl_mime_data (int *,char*,int ) ;
 scalar_t__ curl_mime_data_cb (int *,int ,int ,int ,int *,TYPE_1__*) ;
 scalar_t__ curl_mime_encoder (int *,int ) ;
 scalar_t__ curl_mime_filedata (int *,char*) ;
 scalar_t__ curl_mime_filename (int *,char const*) ;
 int curl_mime_free (int *) ;
 scalar_t__ curl_mime_headers (int *,int ,int ) ;
 scalar_t__ curl_mime_name (int *,int ) ;
 scalar_t__ curl_mime_subparts (int *,int *) ;
 scalar_t__ curl_mime_type (int *,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;
 scalar_t__ tool2curlmime (int *,TYPE_1__*,int **) ;
 int tool_mime_stdin_read ;
 int tool_mime_stdin_seek ;

__attribute__((used)) static CURLcode tool2curlparts(CURL *curl, tool_mime *m, curl_mime *mime)
{
  CURLcode ret = CURLE_OK;
  curl_mimepart *part = ((void*)0);
  curl_mime *submime = ((void*)0);
  const char *filename = ((void*)0);

  if(m) {
    ret = tool2curlparts(curl, m->prev, mime);
    if(!ret) {
      part = curl_mime_addpart(mime);
      if(!part)
        ret = CURLE_OUT_OF_MEMORY;
    }
    if(!ret) {
      filename = m->filename;
      switch(m->kind) {
      case 130:
        ret = tool2curlmime(curl, m, &submime);
        if(!ret) {
          ret = curl_mime_subparts(part, submime);
          if(ret)
            curl_mime_free(submime);
        }
        break;

      case 133:
        ret = curl_mime_data(part, m->data, CURL_ZERO_TERMINATED);

        break;

      case 132:
      case 131:
        ret = curl_mime_filedata(part, m->data);
        if(!ret && m->kind == 131 && !filename)
          ret = curl_mime_filename(part, ((void*)0));
        break;

      case 129:
        if(!filename)
          filename = "-";

      case 128:
        ret = curl_mime_data_cb(part, m->size,
                                (curl_read_callback) tool_mime_stdin_read,
                                (curl_seek_callback) tool_mime_stdin_seek,
                                ((void*)0), m);
        break;

      default:

        break;
      }
    }
    if(!ret && filename)
      ret = curl_mime_filename(part, filename);
    if(!ret)
      ret = curl_mime_type(part, m->type);
    if(!ret)
      ret = curl_mime_headers(part, m->headers, 0);
    if(!ret)
      ret = curl_mime_encoder(part, m->encoder);
    if(!ret)
      ret = curl_mime_name(part, m->name);
  }
  return ret;
}
