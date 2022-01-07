
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mline_t ;
typedef int fline_t ;


 scalar_t__ AM_clipMline (int *,int *) ;
 int AM_drawFline (int *,int) ;

void
AM_drawMline
( mline_t* ml,
  int color )
{
    static fline_t fl;

    if (AM_clipMline(ml, &fl))
 AM_drawFline(&fl, color);
}
