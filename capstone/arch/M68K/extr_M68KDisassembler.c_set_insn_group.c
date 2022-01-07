
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int groups_count; scalar_t__* groups; } ;
typedef TYPE_1__ m68k_info ;
typedef scalar_t__ m68k_group_type ;



__attribute__((used)) static void set_insn_group(m68k_info *info, m68k_group_type group)
{
 info->groups[info->groups_count++] = (uint8_t)group;
}
