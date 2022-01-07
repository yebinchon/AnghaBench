
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int allocsize; int data; } ;
typedef TYPE_1__ ucvector ;


 int CERROR_TRY_RETURN (int ) ;
 int lodepng_chunk_append (int *,int *,unsigned char*) ;
 unsigned char* lodepng_chunk_next (unsigned char*) ;

__attribute__((used)) static unsigned addUnknownChunks(ucvector* out, unsigned char* data, size_t datasize)
{
  unsigned char* inchunk = data;
  while((size_t)(inchunk - data) < datasize)
  {
    CERROR_TRY_RETURN(lodepng_chunk_append(&out->data, &out->size, inchunk));
    out->allocsize = out->size;
    inchunk = lodepng_chunk_next(inchunk);
  }
  return 0;
}
