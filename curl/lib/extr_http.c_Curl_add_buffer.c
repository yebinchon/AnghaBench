
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size_used; char* buffer; int size_max; } ;
typedef TYPE_1__ Curl_send_buffer ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_safefree (char*) ;
 char* Curl_saferealloc (char*,size_t) ;
 int free (TYPE_1__*) ;
 char* malloc (size_t) ;
 int memcpy (char*,void const*,size_t) ;

CURLcode Curl_add_buffer(Curl_send_buffer **inp, const void *inptr,
                         size_t size)
{
  char *new_rb;
  Curl_send_buffer *in = *inp;

  if(~size < in->size_used) {



    Curl_safefree(in->buffer);
    free(in);
    *inp = ((void*)0);
    return CURLE_OUT_OF_MEMORY;
  }

  if(!in->buffer ||
     ((in->size_used + size) > (in->size_max - 1))) {



    size_t new_size;

    if((size > (size_t)-1 / 2) || (in->size_used > (size_t)-1 / 2) ||
       (~(size * 2) < (in->size_used * 2)))
      new_size = (size_t)-1;
    else
      new_size = (in->size_used + size) * 2;

    if(in->buffer)

      new_rb = Curl_saferealloc(in->buffer, new_size);
    else

      new_rb = malloc(new_size);

    if(!new_rb) {

      free(in);
      *inp = ((void*)0);
      return CURLE_OUT_OF_MEMORY;
    }

    in->buffer = new_rb;
    in->size_max = new_size;
  }
  memcpy(&in->buffer[in->size_used], inptr, size);

  in->size_used += size;

  return CURLE_OK;
}
