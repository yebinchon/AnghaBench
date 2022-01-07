
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Supexec (int ) ;
 int * coltable_backup ;
 int f030_coltable_ptr ;
 int f030coltable_backup ;
 int get_colors_on_f030 ;
 int gl_vdi_handle ;
 scalar_t__ reprogram_VIDEL ;
 int vq_color (int ,int,int,int ) ;

void save_original_colors(void)
{
 int i;

 if (reprogram_VIDEL) {
  f030_coltable_ptr = f030coltable_backup;
  Supexec(get_colors_on_f030);

 }
 else {
  for(i=0; i<256; i++)
   vq_color(gl_vdi_handle, i, 1, coltable_backup[i]);
 }
}
