
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct mt_cpu {scalar_t__* mtc_snaps; } ;


 size_t MT_CORE_CYCLES ;
 size_t MT_CORE_INSTRS ;
 int mt_core_supported ;
 struct mt_cpu* mt_cur_cpu () ;

void
mt_perfcontrol(uint64_t *instrs, uint64_t *cycles)
{
 if (!mt_core_supported) {
  *instrs = 0;
  *cycles = 0;
  return;
 }

 struct mt_cpu *mtc = mt_cur_cpu();
 *instrs = 0;


 *cycles = mtc->mtc_snaps[MT_CORE_CYCLES];
}
