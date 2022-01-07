
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bi_valid; int bi_buf; } ;
typedef TYPE_1__ deflate_state ;
typedef int Byte ;


 int put_byte (TYPE_1__*,int ) ;
 int put_short (TYPE_1__*,int) ;

__attribute__((used)) static void bi_flush(deflate_state *s)
   {
      if (s->bi_valid == 16) {
         put_short(s, s->bi_buf);
         s->bi_buf = 0;
         s->bi_valid = 0;
      } else if (s->bi_valid >= 8) {
         put_byte(s, (Byte)s->bi_buf);
         s->bi_buf >>= 8;
         s->bi_valid -= 8;
      }
   }
