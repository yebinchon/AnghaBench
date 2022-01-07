
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int windingRule; } ;
typedef TYPE_1__ TESStesselator ;


 int FALSE ;





 int assert (int) ;

__attribute__((used)) static int IsWindingInside( TESStesselator *tess, int n )
{
 switch( tess->windingRule ) {
  case 129:
   return (n & 1);
  case 130:
   return (n != 0);
  case 128:
   return (n > 0);
  case 131:
   return (n < 0);
  case 132:
   return (n >= 2) || (n <= -2);
 }

 assert( FALSE );


 return( FALSE );
}
