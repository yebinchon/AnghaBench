
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t offset; } ;
struct TYPE_4__ {TYPE_1__ state; int * data; scalar_t__ datasize; } ;
typedef TYPE_2__ curl_mimepart ;


 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static size_t mime_mem_read(char *buffer, size_t size, size_t nitems,
                            void *instream)
{
  curl_mimepart *part = (curl_mimepart *) instream;
  size_t sz = (size_t) part->datasize - part->state.offset;
  (void) size;

  if(sz > nitems)
    sz = nitems;

  if(sz)
    memcpy(buffer, (char *) &part->data[part->state.offset], sz);

  part->state.offset += sz;
  return sz;
}
