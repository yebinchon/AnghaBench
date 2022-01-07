
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDF_RGB555 ;
 int PicoDrawSetOutFormat (int ,int) ;

void plat_video_toggle_renderer(int change, int is_menu)
{

 PicoDrawSetOutFormat(PDF_RGB555, 1);
}
