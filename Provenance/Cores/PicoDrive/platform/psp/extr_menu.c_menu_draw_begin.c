
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GU_DIRECT ;
 int GU_PSM_5650 ;
 int bg_buffer ;
 int guCmdList ;
 int menu_screen ;
 int sceGuCopyImage (int ,int ,int ,int,int,int,int ,int ,int ,int,int ) ;
 int sceGuFinish () ;
 int sceGuStart (int ,int ) ;
 int sceGuSync (int ,int ) ;

void menu_draw_begin(void)
{






 sceGuSync(0,0);
 sceGuStart(GU_DIRECT, guCmdList);
 sceGuCopyImage(GU_PSM_5650, 0, 0, 480, 272, 480, bg_buffer, 0, 0, 512, menu_screen);
 sceGuFinish();
 sceGuSync(0,0);
}
