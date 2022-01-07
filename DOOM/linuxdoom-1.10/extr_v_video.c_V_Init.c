
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int * I_AllocLow (int) ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int ** screens ;

void V_Init (void)
{
    int i;
    byte* base;



    base = I_AllocLow (SCREENWIDTH*SCREENHEIGHT*4);

    for (i=0 ; i<4 ; i++)
 screens[i] = base + i*SCREENWIDTH*SCREENHEIGHT;
}
