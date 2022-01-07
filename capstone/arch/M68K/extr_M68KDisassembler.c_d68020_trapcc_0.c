
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ op_count; } ;
struct TYPE_7__ {TYPE_1__ extension; } ;
typedef TYPE_2__ m68k_info ;


 int LIMIT_CPU_TYPES (TYPE_2__*,int ) ;
 int M68020_PLUS ;
 int build_trap (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void d68020_trapcc_0(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68020_PLUS);
 build_trap(info, 0, 0);

 info->extension.op_count = 0;
}
