
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GTIA_pm_scanline ;


 int GTIA_M0PL ;
 int GTIA_M1PL ;
 int GTIA_M2PL ;
 int GTIA_M3PL ;
 int GTIA_P1PL ;
 int GTIA_P2PL ;
 int GTIA_P3PL ;
 int M0PL_T ;
 int M1PL_T ;
 int M2PL_T ;
 int M3PL_T ;
 int P1PL_T ;
 int P2PL_T ;
 int P3PL_T ;
 scalar_t__ collision_curpos ;
 int generate_partial_pmpl_colls (scalar_t__,int) ;
 scalar_t__ hitclr_pos ;

void GTIA_UpdatePmplColls(void)
{
 if (hitclr_pos != 0){
  generate_partial_pmpl_colls(hitclr_pos,
    sizeof(GTIA_pm_scanline) / sizeof(GTIA_pm_scanline[0]) - 1);



 }
 else {



  GTIA_P1PL |= P1PL_T;
  GTIA_P2PL |= P2PL_T;
  GTIA_P3PL |= P3PL_T;
  GTIA_M0PL |= M0PL_T;
  GTIA_M1PL |= M1PL_T;
  GTIA_M2PL |= M2PL_T;
  GTIA_M3PL |= M3PL_T;
 }
 collision_curpos = 0;
 hitclr_pos = 0;
}
