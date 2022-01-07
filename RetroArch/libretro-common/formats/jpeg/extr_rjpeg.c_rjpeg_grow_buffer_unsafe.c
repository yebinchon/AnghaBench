
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code_bits; int nomore; unsigned char marker; int code_buffer; int s; } ;
typedef TYPE_1__ rjpeg_jpeg ;


 int rjpeg_get8 (int ) ;

__attribute__((used)) static void rjpeg_grow_buffer_unsafe(rjpeg_jpeg *j)
{
   do
   {
      int b = j->nomore ? 0 : rjpeg_get8(j->s);
      if (b == 0xff)
      {
         int c = rjpeg_get8(j->s);

         if (c != 0)
         {
            j->marker = (unsigned char) c;
            j->nomore = 1;
            return;
         }
      }
      j->code_buffer |= b << (24 - j->code_bits);
      j->code_bits += 8;
   } while (j->code_bits <= 24);
}
