
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fixed_t ;


 double FRACUNIT ;
 int I_Error (char*) ;

fixed_t
FixedDiv2
( fixed_t a,
  fixed_t b )
{






    double c;

    c = ((double)a) / ((double)b) * FRACUNIT;

    if (c >= 2147483648.0 || c < -2147483648.0)
 I_Error("FixedDiv: divide by zero");
    return (fixed_t) c;
}
