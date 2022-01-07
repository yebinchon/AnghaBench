
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double* exptable2 ;
 int printf (char*) ;

void InitExpand2 (void)
{
    int i;
    int j;

    double* exp;
    union
    {
 double d;
 unsigned u[2];
    } pixel;

    printf ("building exptable2...\n");
    exp = exptable2;
    for (i=0 ; i<256 ; i++)
    {
 pixel.u[0] = i | (i<<8) | (i<<16) | (i<<24);
 for (j=0 ; j<256 ; j++)
 {
     pixel.u[1] = j | (j<<8) | (j<<16) | (j<<24);
     *exp++ = pixel.d;
 }
    }
    printf ("done.\n");
}
