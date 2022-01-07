
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mt_cpu {int dummy; } ;


 scalar_t__ FALSE ;
 int assert (int) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 struct mt_cpu* mt_cur_cpu () ;
 int mt_mtc_update_fixed_counts (struct mt_cpu*,int *,int *) ;

__attribute__((used)) static void
mt_fixed_counts_internal(uint64_t *counts, uint64_t *counts_since)
{
 assert(ml_get_interrupts_enabled() == FALSE);

 struct mt_cpu *mtc = mt_cur_cpu();
 assert(mtc != ((void*)0));

 mt_mtc_update_fixed_counts(mtc, counts, counts_since);
}
