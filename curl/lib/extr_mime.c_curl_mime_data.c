
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; size_t datasize; int kind; int freefunc; int seekfunc; int readfunc; } ;
typedef TYPE_1__ curl_mimepart ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 size_t CURL_ZERO_TERMINATED ;
 int MIMEKIND_DATA ;
 int cleanup_part_content (TYPE_1__*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int mime_mem_free ;
 int mime_mem_read ;
 int mime_mem_seek ;
 size_t strlen (char const*) ;

CURLcode curl_mime_data(curl_mimepart *part,
                        const char *data, size_t datasize)
{
  if(!part)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  cleanup_part_content(part);

  if(data) {
    if(datasize == CURL_ZERO_TERMINATED)
      datasize = strlen(data);

    part->data = malloc(datasize + 1);
    if(!part->data)
      return CURLE_OUT_OF_MEMORY;

    part->datasize = datasize;

    if(datasize)
      memcpy(part->data, data, datasize);
    part->data[datasize] = '\0';

    part->readfunc = mime_mem_read;
    part->seekfunc = mime_mem_seek;
    part->freefunc = mime_mem_free;
    part->kind = MIMEKIND_DATA;
  }

  return CURLE_OK;
}
