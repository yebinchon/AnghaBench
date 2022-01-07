
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* name_lut ;

__attribute__((used)) static void make_name_lut(void)
{
  int vcol, vrow;
  int width, height;
  int flipx, flipy;
  int i;

  for (i = 0; i < 0x400; i += 1)
  {

    vcol = i & 3;
    vrow = (i >> 2) & 3;
    height = (i >> 4) & 3;
    width = (i >> 6) & 3;
    flipx = (i >> 8) & 1;
    flipy = (i >> 9) & 1;

    if ((vrow > height) || vcol > width)
    {

      name_lut[i] = -1;
    }
    else
    {

      if(flipx) vcol = (width - vcol);
      if(flipy) vrow = (height - vrow);


      name_lut[i] = vrow + (vcol * (height + 1));
    }
  }
}
