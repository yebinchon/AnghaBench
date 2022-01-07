
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avctx; int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int avpriv_request_sample (int ,char*) ;
 int ff_tlog (int ,char*,int) ;
 int get_bits1 (int *) ;

__attribute__((used)) static int h263p_decode_umotion(MpegEncContext * s, int pred)
{
   int code = 0, sign;

   if (get_bits1(&s->gb))
      return pred;

   code = 2 + get_bits1(&s->gb);

   while (get_bits1(&s->gb))
   {
      code <<= 1;
      code += get_bits1(&s->gb);
      if (code >= 32768) {
          avpriv_request_sample(s->avctx, "Huge DMV");
          return 0xffff;
      }
   }
   sign = code & 1;
   code >>= 1;

   code = (sign) ? (pred - code) : (pred + code);
   ff_tlog(s->avctx,"H.263+ UMV Motion = %d\n", code);
   return code;

}
