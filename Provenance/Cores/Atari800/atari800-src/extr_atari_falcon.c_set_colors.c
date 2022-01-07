
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Supexec (int ) ;
 int * coltable ;
 int * coltable_backup ;
 int f030_coltable_ptr ;
 int f030coltable ;
 int f030coltable_backup ;
 int gl_vdi_handle ;
 scalar_t__ reprogram_VIDEL ;
 int set_colors_on_f030 ;
 int vs_color (int ,int,int ) ;

void set_colors(int new)
{
 int i;

 if (reprogram_VIDEL) {
  if (new)
   f030_coltable_ptr = f030coltable;
  else
   f030_coltable_ptr = f030coltable_backup;
  Supexec(set_colors_on_f030);

 }
 else {
  for(i=0; i<256; i++)
   vs_color(gl_vdi_handle, i, new ? coltable[i] : coltable_backup[i]);
 }
}
