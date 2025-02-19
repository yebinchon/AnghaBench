
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ir; } ;
typedef TYPE_1__ m68k_info ;


 int LIMIT_CPU_TYPES (TYPE_1__*,int ) ;
 int M68040_PLUS ;
 int M68K_AM_REGI_ADDR_POST_INC ;
 int build_move16 (TYPE_1__*,int*,int*) ;
 int read_imm_16 (TYPE_1__*) ;

__attribute__((used)) static void d68040_move16_pi_pi(m68k_info *info)
{
 int data[] = { info->ir & 7, (read_imm_16(info) >> 12) & 7 };
 int modes[] = { M68K_AM_REGI_ADDR_POST_INC, M68K_AM_REGI_ADDR_POST_INC };

 LIMIT_CPU_TYPES(info, M68040_PLUS);

 build_move16(info, data, modes);
}
