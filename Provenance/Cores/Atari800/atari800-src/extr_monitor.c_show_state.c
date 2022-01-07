
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_C_FLAG ;
 int CPU_N_FLAG ;
 int CPU_V_FLAG ;
 int CPU_Z_FLAG ;
 int CPU_regA ;
 int CPU_regP ;
 int CPU_regPC ;
 int CPU_regS ;
 int CPU_regX ;
 int CPU_regY ;
 int MONITOR_ShowState (int ,int ,int ,int ,int ,int ,char,char,char,char) ;
 int stdout ;

__attribute__((used)) static void show_state(void)
{
 MONITOR_ShowState(stdout, CPU_regPC, CPU_regA, CPU_regX, CPU_regY, CPU_regS,
  (char) ((CPU_regP & CPU_N_FLAG) ? 'N' : '-'), (char) ((CPU_regP & CPU_V_FLAG) ? 'V' : '-'),
  (char) ((CPU_regP & CPU_Z_FLAG) ? 'Z' : '-'), (char) ((CPU_regP & CPU_C_FLAG) ? 'C' : '-'));
}
