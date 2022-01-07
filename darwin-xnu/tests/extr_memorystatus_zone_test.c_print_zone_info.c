
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mzn_name; } ;
typedef TYPE_1__ mach_zone_name_t ;
struct TYPE_6__ {int mzi_count; int mzi_cur_size; } ;
typedef TYPE_2__ mach_zone_info_t ;


 int T_LOG (char*,int ,int ,int ) ;

__attribute__((used)) static void print_zone_info(mach_zone_name_t *zn, mach_zone_info_t *zi)
{
 T_LOG("ZONE NAME: %-35sSIZE: %-25lluELEMENTS: %llu",
   zn->mzn_name, zi->mzi_cur_size, zi->mzi_count);
}
