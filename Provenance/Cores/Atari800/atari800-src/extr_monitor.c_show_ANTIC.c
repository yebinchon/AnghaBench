
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_CHACTL ;
 int ANTIC_CHBASE ;
 int ANTIC_DMACTL ;
 int ANTIC_GetByte (int ,int ) ;
 int ANTIC_HSCROL ;
 int ANTIC_NMIEN ;
 int ANTIC_OFFSET_VCOUNT ;
 int ANTIC_PMBASE ;
 int ANTIC_VSCROL ;
 int ANTIC_dlist ;
 int ANTIC_ypos ;
 int TRUE ;
 int printf (char*,int,int,int,int,int,...) ;

__attribute__((used)) static void show_ANTIC(void)
{
 printf("DMACTL=%02X    CHACTL=%02X    DLISTL=%02X    "
     "DLISTH=%02X    HSCROL=%02X    VSCROL=%02X\n",
     ANTIC_DMACTL, ANTIC_CHACTL, ANTIC_dlist & 0xff, ANTIC_dlist >> 8, ANTIC_HSCROL, ANTIC_VSCROL);
 printf("PMBASE=%02X    CHBASE=%02X    VCOUNT=%02X    "
     "NMIEN= %02X    ypos=%4d\n",
     ANTIC_PMBASE, ANTIC_CHBASE, ANTIC_GetByte(ANTIC_OFFSET_VCOUNT, TRUE), ANTIC_NMIEN, ANTIC_ypos);
}
