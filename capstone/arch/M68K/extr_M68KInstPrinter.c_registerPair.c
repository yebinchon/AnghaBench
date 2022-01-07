
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t reg_0; size_t reg_1; } ;
struct TYPE_5__ {TYPE_1__ reg_pair; } ;
typedef TYPE_2__ cs_m68k_op ;
typedef int SStream ;


 size_t M68K_REG_D0 ;
 int SStream_concat (int *,char*,int ,int ) ;
 int * s_reg_names ;

__attribute__((used)) static void registerPair(SStream* O, const cs_m68k_op* op)
{
 SStream_concat(O, "%s:%s", s_reg_names[M68K_REG_D0 + op->reg_pair.reg_0],
   s_reg_names[M68K_REG_D0 + op->reg_pair.reg_1]);
}
