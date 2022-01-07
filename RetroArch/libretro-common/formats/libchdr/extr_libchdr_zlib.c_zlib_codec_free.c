
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* allocptr; } ;
struct TYPE_3__ {TYPE_2__ allocator; int inflater; } ;
typedef TYPE_1__ zlib_codec_data ;
typedef TYPE_2__ zlib_allocator ;


 int MAX_ZLIB_ALLOCS ;
 int free (scalar_t__) ;
 int inflateEnd (int *) ;

void zlib_codec_free(void *codec)
{
 zlib_codec_data *data = (zlib_codec_data *)codec;


 if (data != ((void*)0))
 {
  int i;
      zlib_allocator alloc;

  inflateEnd(&data->inflater);


  alloc = data->allocator;
  for (i = 0; i < MAX_ZLIB_ALLOCS; i++)
   if (alloc.allocptr[i])
    free(alloc.allocptr[i]);
 }
}
