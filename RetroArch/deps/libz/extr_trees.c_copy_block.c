
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ush ;
typedef int ulg ;
struct TYPE_6__ {int bits_sent; } ;
typedef TYPE_1__ deflate_state ;
typedef int charf ;


 int bi_windup (TYPE_1__*) ;
 int put_byte (TYPE_1__*,int ) ;
 int put_short (TYPE_1__*,int ) ;

__attribute__((used)) static void copy_block(deflate_state *s, charf *buf, unsigned len, int header)
   {
      bi_windup(s);

      if (header) {
         put_short(s, (ush)len);
         put_short(s, (ush)~len);



      }



      while (len--) {
         put_byte(s, *buf++);
      }
   }
