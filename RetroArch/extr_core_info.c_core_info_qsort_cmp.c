
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int display_name; } ;
typedef TYPE_1__ core_info_t ;


 scalar_t__ core_info_does_support_any_file (TYPE_1__ const*,int ) ;
 int core_info_does_support_file (TYPE_1__ const*,int ) ;
 int core_info_tmp_list ;
 int core_info_tmp_path ;
 int strcasecmp (int ,int ) ;

__attribute__((used)) static int core_info_qsort_cmp(const void *a_, const void *b_)
{
   const core_info_t *a = (const core_info_t*)a_;
   const core_info_t *b = (const core_info_t*)b_;
   int support_a = core_info_does_support_file(a, core_info_tmp_path);
   int support_b = core_info_does_support_file(b, core_info_tmp_path);







   if (support_a != support_b)
      return support_b - support_a;
   return strcasecmp(a->display_name, b->display_name);
}
