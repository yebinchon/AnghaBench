
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Error (char*,int,int) ;
 int maketic ;

int ExpandTics (int low)
{
    int delta;

    delta = low - (maketic&0xff);

    if (delta >= -64 && delta <= 64)
 return (maketic&~0xff) + low;
    if (delta > 64)
 return (maketic&~0xff) - 256 + low;
    if (delta < -64)
 return (maketic&~0xff) + 256 + low;

    I_Error ("ExpandTics: strange value %i at maketic %i",low,maketic);
    return 0;
}
