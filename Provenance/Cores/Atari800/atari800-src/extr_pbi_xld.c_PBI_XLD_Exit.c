
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* FALSE ;
 void* PBI_XLD_enabled ;
 void* PBI_XLD_v_enabled ;
 int diskrom ;
 int free (int ) ;
 int voicerom ;
 void* xld_d_enabled ;

void PBI_XLD_Exit(void)
{
 if (xld_d_enabled) {
  free(diskrom);
  xld_d_enabled = FALSE;
 }
 if (PBI_XLD_v_enabled) {
  free(voicerom);
  PBI_XLD_v_enabled = FALSE;
 }
 PBI_XLD_enabled = FALSE;
}
