
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_8__ {scalar_t__ d86_numopnds; int d86_rex_prefix; scalar_t__ d86_opnd_size; scalar_t__ d86_addr_size; scalar_t__ d86_mode; scalar_t__ d86_vsib; TYPE_1__* d86_opnd; scalar_t__ d86_error; } ;
typedef TYPE_2__ dis86_t ;
struct TYPE_7__ {char* d86_opnd; void* d86_mode; } ;





 scalar_t__ EBP_REGNO ;
 scalar_t__ ESP_REGNO ;


 void* MODE_NONE ;
 void* MODE_OFFSET ;
 void* MODE_RIPREL ;
 void* MODE_SIGNED ;
 int OPLEN ;
 scalar_t__ REG_ONLY ;
 int REX_B ;
 int REX_X ;

 scalar_t__ SIZE16 ;
 scalar_t__ SIZE32 ;




 char** dis_CONTROLREG ;
 char** dis_DEBUGREG ;
 char** dis_MMREG ;
 char** dis_REG16 ;
 char** dis_REG32 ;
 char** dis_REG64 ;
 char** dis_REG8 ;
 char** dis_REG8_REX ;
 char** dis_SEGREG ;
 char** dis_TESTREG ;
 char** dis_XMMREG ;
 char** dis_YMMREG ;
 char*** dis_addr16 ;
 char** dis_addr32_mode0 ;
 char** dis_addr32_mode12 ;
 char** dis_addr64_mode0 ;
 char** dis_addr64_mode12 ;
 char** dis_scale_factor ;
 char** dis_vscale_factor ;
 int dtrace_check_override (TYPE_2__*,int) ;
 int dtrace_get_SIB (TYPE_2__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dtrace_imm_opnd (TYPE_2__*,int const,int,int) ;
 int strlcat (char*,char const* const,int ) ;

__attribute__((used)) static void
dtrace_get_operand(dis86_t *x, uint_t mode, uint_t r_m, int wbit, int opindex)
{
 int have_SIB = 0;
 uint_t ss;
 uint_t index;
 uint_t base;
 int dispsize;



#pragma unused (wbit)


 if (x->d86_numopnds < (uint_t)opindex + 1)
  x->d86_numopnds = (uint_t)opindex + 1;

 if (x->d86_error)
  return;




 if (mode == REG_ONLY) {
  return;
 }




 dtrace_check_override(x, opindex);
 if (x->d86_addr_size == SIZE16) {
  if ((mode == 0 && r_m == 6) || mode == 2)
   dtrace_imm_opnd(x, 130, 2, opindex);
  else if (mode == 1)
   dtrace_imm_opnd(x, 137, 1, opindex);
  return;
 }





 if (r_m == ESP_REGNO || r_m == ESP_REGNO + 8) {
  have_SIB = 1;
  dtrace_get_SIB(x, &ss, &index, &base);
  if (x->d86_error)
   return;
  if (base != 5 || mode != 0)
   if (x->d86_rex_prefix & REX_B)
    base += 8;
  if (x->d86_rex_prefix & REX_X)
   index += 8;
 } else {
  base = r_m;
 }




 dispsize = 0;

 if (mode == 1)
  dispsize = 1;
 else if (mode == 2)
  dispsize = 4;
 else if ((r_m & 7) == EBP_REGNO ||
     (have_SIB && (base & 7) == EBP_REGNO))
  dispsize = 4;

 if (dispsize > 0) {
  dtrace_imm_opnd(x, dispsize == 4 ? 134 : 137,
      dispsize, opindex);
  if (x->d86_error)
   return;
 }
}
