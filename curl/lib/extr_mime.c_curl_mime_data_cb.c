
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int curl_seek_callback ;
typedef scalar_t__ curl_read_callback ;
typedef int curl_off_t ;
struct TYPE_4__ {int kind; int datasize; void* arg; int freefunc; int seekfunc; scalar_t__ readfunc; } ;
typedef TYPE_1__ curl_mimepart ;
typedef int curl_free_callback ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 int MIMEKIND_CALLBACK ;
 int cleanup_part_content (TYPE_1__*) ;

CURLcode curl_mime_data_cb(curl_mimepart *part, curl_off_t datasize,
                           curl_read_callback readfunc,
                           curl_seek_callback seekfunc,
                           curl_free_callback freefunc, void *arg)
{
  if(!part)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  cleanup_part_content(part);

  if(readfunc) {
    part->readfunc = readfunc;
    part->seekfunc = seekfunc;
    part->freefunc = freefunc;
    part->arg = arg;
    part->datasize = datasize;
    part->kind = MIMEKIND_CALLBACK;
  }

  return CURLE_OK;
}
