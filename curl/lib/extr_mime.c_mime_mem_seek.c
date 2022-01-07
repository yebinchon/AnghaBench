
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ curl_off_t ;
struct TYPE_3__ {size_t offset; } ;
struct TYPE_4__ {scalar_t__ datasize; TYPE_1__ state; } ;
typedef TYPE_2__ curl_mimepart ;


 int CURL_SEEKFUNC_FAIL ;
 int CURL_SEEKFUNC_OK ;



__attribute__((used)) static int mime_mem_seek(void *instream, curl_off_t offset, int whence)
{
  curl_mimepart *part = (curl_mimepart *) instream;

  switch(whence) {
  case 129:
    offset += part->state.offset;
    break;
  case 128:
    offset += part->datasize;
    break;
  }

  if(offset < 0 || offset > part->datasize)
    return CURL_SEEKFUNC_FAIL;

  part->state.offset = (size_t) offset;
  return CURL_SEEKFUNC_OK;
}
