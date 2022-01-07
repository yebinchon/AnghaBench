
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int avail_in; int * next_in; } ;
struct zlib_trans_stream {int inited; int ex; TYPE_1__ z; } ;


 int inflateInit2 (TYPE_1__*,int ) ;

__attribute__((used)) static void zlib_inflate_set_in(void *data, const uint8_t *in, uint32_t in_size)
{
   struct zlib_trans_stream *z = (struct zlib_trans_stream *) data;

   if (!z)
      return;

   z->z.next_in = (uint8_t *) in;
   z->z.avail_in = in_size;
   if (!z->inited)
   {
      inflateInit2(&z->z, z->ex);
      z->inited = 1;
   }
}
