
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
 int ANTIC_OFFSET_CHACTL ;
 int ANTIC_OFFSET_CHBASE ;
 int ANTIC_OFFSET_DMACTL ;
 int ANTIC_OFFSET_PMBASE ;
 int ANTIC_PMBASE ;
 int ANTIC_PutByte (int ,int ) ;
 int ANTIC_VSCROL ;
 int ANTIC_dlist ;
 int ANTIC_xpos ;
 int ANTIC_xpos_limit ;
 int ANTIC_ypos ;
 int IR ;
 int StateSav_ReadINT (int *,int) ;
 int StateSav_ReadUBYTE (int *,int) ;
 int StateSav_ReadUWORD (int *,int) ;
 int anticmode ;
 int dctr ;
 int lastline ;
 int need_dl ;
 int screenaddr ;
 int vscrol_off ;

void ANTIC_StateRead(void)
{
 StateSav_ReadUBYTE(&ANTIC_DMACTL, 1);
 StateSav_ReadUBYTE(&ANTIC_CHACTL, 1);
 StateSav_ReadUBYTE(&ANTIC_HSCROL, 1);
 StateSav_ReadUBYTE(&ANTIC_VSCROL, 1);
 StateSav_ReadUBYTE(&ANTIC_PMBASE, 1);
 StateSav_ReadUBYTE(&ANTIC_CHBASE, 1);
 StateSav_ReadUBYTE(&ANTIC_NMIEN, 1);
 StateSav_ReadUBYTE(&ANTIC_NMIST, 1);
 StateSav_ReadUBYTE(&IR, 1);
 StateSav_ReadUBYTE(&anticmode, 1);
 StateSav_ReadUBYTE(&dctr, 1);
 StateSav_ReadUBYTE(&lastline, 1);
 StateSav_ReadUBYTE(&need_dl, 1);
 StateSav_ReadUBYTE(&vscrol_off, 1);

 StateSav_ReadUWORD(&ANTIC_dlist, 1);
 StateSav_ReadUWORD(&screenaddr, 1);

 StateSav_ReadINT(&ANTIC_xpos, 1);
 StateSav_ReadINT(&ANTIC_xpos_limit, 1);
 StateSav_ReadINT(&ANTIC_ypos, 1);

 ANTIC_PutByte(ANTIC_OFFSET_DMACTL, ANTIC_DMACTL);
 ANTIC_PutByte(ANTIC_OFFSET_CHACTL, ANTIC_CHACTL);
 ANTIC_PutByte(ANTIC_OFFSET_PMBASE, ANTIC_PMBASE);
 ANTIC_PutByte(ANTIC_OFFSET_CHBASE, ANTIC_CHBASE);
}
