
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_t ;


 int FixedDiv2 (int,int) ;
 int MAXINT ;
 int MININT ;
 int abs (int) ;

fixed_t
FixedDiv
( fixed_t a,
  fixed_t b )
{
    if ( (abs(a)>>14) >= abs(b))
 return (a^b)<0 ? MININT : MAXINT;
    return FixedDiv2 (a,b);
}
