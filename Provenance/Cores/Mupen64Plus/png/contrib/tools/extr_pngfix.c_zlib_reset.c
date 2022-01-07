
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ avail_out; void* next_out; scalar_t__ avail_in; void* next_in; } ;
struct zlib {scalar_t__ state; int window_bits; scalar_t__ rc; TYPE_1__ z; scalar_t__ uncompressed_digits; scalar_t__ compressed_digits; } ;


 void* Z_NULL ;
 scalar_t__ Z_OK ;
 int assert (int) ;
 scalar_t__ inflateReset2 (TYPE_1__*,int ) ;
 int zlib_message (struct zlib*,int) ;

__attribute__((used)) static int
zlib_reset(struct zlib *zlib, int window_bits)

{
   assert(zlib->state >= 0);

   zlib->z.next_in = Z_NULL;
   zlib->z.avail_in = 0;
   zlib->z.next_out = Z_NULL;
   zlib->z.avail_out = 0;

   zlib->window_bits = window_bits;
   zlib->compressed_digits = 0;
   zlib->uncompressed_digits = 0;

   zlib->state = 0;
   zlib->rc = inflateReset2(&zlib->z, 0);
   if (zlib->rc != Z_OK)
   {
      zlib_message(zlib, 1 );
      return 0;
   }

   return 1;
}
