
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int avail_out; int * next_out; } ;
struct zlib_trans_stream {TYPE_1__ z; } ;



__attribute__((used)) static void zlib_set_out(void *data, uint8_t *out, uint32_t out_size)
{
   struct zlib_trans_stream *z = (struct zlib_trans_stream *) data;

   if (!z)
      return;

   z->z.next_out = out;
   z->z.avail_out = out_size;
}
