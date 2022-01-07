
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16 ;


 int ** lut ;
 int make_bp_lut () ;
 int make_lut_bg (int,int) ;
 int make_lut_bg_ste (int,int) ;
 int make_lut_bgobj (int,int) ;
 int make_lut_bgobj_m4 (int,int) ;
 int make_lut_bgobj_ste (int,int) ;
 int make_lut_obj (int,int) ;
 int make_name_lut () ;
 int palette_init () ;

void render_init(void)
{
  int bx, ax;


  uint16 index;
  for (bx = 0; bx < 0x100; bx++)
  {
    for (ax = 0; ax < 0x100; ax++)
    {
      index = (bx << 8) | (ax);

      lut[0][index] = make_lut_bg(bx, ax);
      lut[1][index] = make_lut_bgobj(bx, ax);
      lut[2][index] = make_lut_bg_ste(bx, ax);
      lut[3][index] = make_lut_obj(bx, ax);
      lut[4][index] = make_lut_bgobj_ste(bx, ax);
      lut[5][index] = make_lut_bgobj_m4(bx,ax);
    }
  }


  palette_init();


  make_name_lut();


  make_bp_lut();
}
