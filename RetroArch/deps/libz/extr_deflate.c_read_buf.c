
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct internal_state_deflate {int wrap; } ;
struct TYPE_3__ {unsigned int avail_in; unsigned int next_in; unsigned int total_in; int adler; scalar_t__ state; } ;
typedef int Bytef ;


 int adler32 (int ,int *,unsigned int) ;
 int crc32 (int ,int *,unsigned int) ;
 int zmemcpy (int *,unsigned int,unsigned int) ;

__attribute__((used)) static int read_buf(z_streamp strm, Bytef *buf, unsigned size)
{
   struct internal_state_deflate *state = (struct internal_state_deflate*)strm->state;
   unsigned len = strm->avail_in;

   if (len > size) len = size;
   if (len == 0) return 0;

   strm->avail_in -= len;

   zmemcpy(buf, strm->next_in, len);
   if (state->wrap == 1) {
      strm->adler = adler32(strm->adler, buf, len);
   }





   strm->next_in += len;
   strm->total_in += len;

   return (int)len;
}
