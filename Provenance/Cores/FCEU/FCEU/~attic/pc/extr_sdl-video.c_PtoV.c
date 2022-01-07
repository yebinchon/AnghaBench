
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;


 int EO_CLIPSIDES ;
 int eoptions ;
 double exs ;
 double eys ;
 scalar_t__ srendline ;

uint32 PtoV(uint16 x, uint16 y)
{
 y=(double)y/eys;
 x=(double)x/exs;
 if(eoptions&EO_CLIPSIDES)
  x+=8;
 y+=srendline;
 return(x|(y<<16));
}
