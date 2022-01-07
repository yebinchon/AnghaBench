
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * unknown_chunks_data; } ;
typedef TYPE_1__ LodePNGInfo ;


 int lodepng_free (int ) ;

__attribute__((used)) static void LodePNGUnknownChunks_cleanup(LodePNGInfo* info)
{
  unsigned i;
  for(i = 0; i < 3; i++) lodepng_free(info->unknown_chunks_data[i]);
}
