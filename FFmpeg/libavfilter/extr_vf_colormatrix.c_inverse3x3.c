
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ima ;
 double imb ;
 double imc ;
 double imd ;
 double ime ;
 double imf ;
 double img ;
 double imh ;
 double imi ;
 double ma ;
 double mb ;
 double mc ;
 double md ;
 double me ;
 double mf ;
 double mg ;
 double mh ;
 double mi ;

__attribute__((used)) static void inverse3x3(double im[3][3], double m[3][3])
{
    double det = ma * (me * mi - mf * mh) - mb * (md * mi - mf * mg) + mc * (md * mh - me * mg);
    det = 1.0 / det;
    ima = det * (me * mi - mf * mh);
    imb = det * (mc * mh - mb * mi);
    imc = det * (mb * mf - mc * me);
    imd = det * (mf * mg - md * mi);
    ime = det * (ma * mi - mc * mg);
    imf = det * (mc * md - ma * mf);
    img = det * (md * mh - me * mg);
    imh = det * (mb * mg - ma * mh);
    imi = det * (ma * me - mb * md);
}
