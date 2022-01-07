
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef size_t byte ;
struct TYPE_2__ {scalar_t__ deviceSupportsGamma; } ;


 TYPE_1__ glConfig ;
 size_t* s_gammatable ;
 size_t* s_intensitytable ;

void R_LightScaleTexture (unsigned *in, int inwidth, int inheight, qboolean only_gamma )
{
 if ( only_gamma )
 {
  if ( !glConfig.deviceSupportsGamma )
  {
   int i, c;
   byte *p;

   p = (byte *)in;

   c = inwidth*inheight;
   for (i=0 ; i<c ; i++, p+=4)
   {
    p[0] = s_gammatable[p[0]];
    p[1] = s_gammatable[p[1]];
    p[2] = s_gammatable[p[2]];
   }
  }
 }
 else
 {
  int i, c;
  byte *p;

  p = (byte *)in;

  c = inwidth*inheight;

  if ( glConfig.deviceSupportsGamma )
  {
   for (i=0 ; i<c ; i++, p+=4)
   {
    p[0] = s_intensitytable[p[0]];
    p[1] = s_intensitytable[p[1]];
    p[2] = s_intensitytable[p[2]];
   }
  }
  else
  {
   for (i=0 ; i<c ; i++, p+=4)
   {
    p[0] = s_gammatable[s_intensitytable[p[0]]];
    p[1] = s_gammatable[s_intensitytable[p[1]]];
    p[2] = s_gammatable[s_intensitytable[p[2]]];
   }
  }
 }
}
