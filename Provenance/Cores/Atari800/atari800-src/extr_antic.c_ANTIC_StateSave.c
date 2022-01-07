
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_CHACTL ;
 int ANTIC_CHBASE ;
 int ANTIC_DMACTL ;
 int ANTIC_HSCROL ;
 int ANTIC_NMIEN ;
 int ANTIC_NMIST ;
 int ANTIC_PMBASE ;
 int ANTIC_VSCROL ;
 int ANTIC_dlist ;
 int ANTIC_xpos ;
 int ANTIC_xpos_limit ;
 int ANTIC_ypos ;
 int IR ;
 int StateSav_SaveINT (int *,int) ;
 int StateSav_SaveUBYTE (int *,int) ;
 int StateSav_SaveUWORD (int *,int) ;
 int anticmode ;
 int dctr ;
 int lastline ;
 int need_dl ;
 int screenaddr ;
 int vscrol_off ;

void ANTIC_StateSave(void)
{
 StateSav_SaveUBYTE(&ANTIC_DMACTL, 1);
 StateSav_SaveUBYTE(&ANTIC_CHACTL, 1);
 StateSav_SaveUBYTE(&ANTIC_HSCROL, 1);
 StateSav_SaveUBYTE(&ANTIC_VSCROL, 1);
 StateSav_SaveUBYTE(&ANTIC_PMBASE, 1);
 StateSav_SaveUBYTE(&ANTIC_CHBASE, 1);
 StateSav_SaveUBYTE(&ANTIC_NMIEN, 1);
 StateSav_SaveUBYTE(&ANTIC_NMIST, 1);
 StateSav_SaveUBYTE(&IR, 1);
 StateSav_SaveUBYTE(&anticmode, 1);
 StateSav_SaveUBYTE(&dctr, 1);
 StateSav_SaveUBYTE(&lastline, 1);
 StateSav_SaveUBYTE(&need_dl, 1);
 StateSav_SaveUBYTE(&vscrol_off, 1);

 StateSav_SaveUWORD(&ANTIC_dlist, 1);
 StateSav_SaveUWORD(&screenaddr, 1);

 StateSav_SaveINT(&ANTIC_xpos, 1);
 StateSav_SaveINT(&ANTIC_xpos_limit, 1);
 StateSav_SaveINT(&ANTIC_ypos, 1);
}
