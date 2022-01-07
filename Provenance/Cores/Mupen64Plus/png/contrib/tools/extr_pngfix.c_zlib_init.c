
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* opaque; void* zfree; void* zalloc; scalar_t__ avail_in; void* next_in; } ;
struct zlib {int state; int window_bits; int file_bits; int ok_bits; scalar_t__ rc; TYPE_1__ z; scalar_t__ cksum; scalar_t__ uncompressed_digits; scalar_t__ compressed_digits; int rewrite_offset; int global; int file; struct chunk* chunk; struct IDAT* idat; } ;
struct chunk {int global; int file; } ;
struct IDAT {int dummy; } ;
typedef int png_uint_32 ;


 int CLEAR (struct zlib) ;
 void* Z_NULL ;
 scalar_t__ Z_OK ;
 scalar_t__ inflateInit2 (TYPE_1__*,int ) ;
 int zlib_message (struct zlib*,int) ;

__attribute__((used)) static int
zlib_init(struct zlib *zlib, struct IDAT *idat, struct chunk *chunk,
   int window_bits, png_uint_32 offset)

{
   CLEAR(*zlib);

   zlib->idat = idat;
   zlib->chunk = chunk;
   zlib->file = chunk->file;
   zlib->global = chunk->global;
   zlib->rewrite_offset = offset;


   zlib->z.next_in = Z_NULL;
   zlib->z.avail_in = 0;
   zlib->z.zalloc = Z_NULL;
   zlib->z.zfree = Z_NULL;
   zlib->z.opaque = Z_NULL;

   zlib->state = -1;
   zlib->window_bits = window_bits;

   zlib->compressed_digits = 0;
   zlib->uncompressed_digits = 0;




   zlib->file_bits = 24;
   zlib->ok_bits = 16;
   zlib->cksum = 0;




   zlib->rc = inflateInit2(&zlib->z, 0);
   if (zlib->rc != Z_OK)
   {
      zlib_message(zlib, 1 );
      return 0;
   }

   else
   {
      zlib->state = 0;
      return 1;
   }
}
