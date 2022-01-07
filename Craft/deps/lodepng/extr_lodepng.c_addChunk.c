
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int allocsize; int data; } ;
typedef TYPE_1__ ucvector ;


 int CERROR_TRY_RETURN (int ) ;
 int lodepng_chunk_create (int *,int *,unsigned int,char const*,unsigned char const*) ;

__attribute__((used)) static unsigned addChunk(ucvector* out, const char* chunkName, const unsigned char* data, size_t length)
{
  CERROR_TRY_RETURN(lodepng_chunk_create(&out->data, &out->size, (unsigned)length, chunkName, data));
  out->allocsize = out->size;
  return 0;
}
