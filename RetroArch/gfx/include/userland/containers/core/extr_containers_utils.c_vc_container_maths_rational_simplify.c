
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;


 int vc_container_maths_gcd (int,int) ;

void vc_container_maths_rational_simplify(uint32_t *num, uint32_t *den)
{
   int64_t div = vc_container_maths_gcd((int64_t)*num, (int64_t)*den);
   if(div)
   {
      *num /= div;
      *den /= div;
   }
}
