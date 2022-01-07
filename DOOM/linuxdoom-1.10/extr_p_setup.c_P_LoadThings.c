
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int x; int y; int angle; int options; } ;
typedef TYPE_1__ mapthing_t ;
typedef int byte ;
typedef int boolean ;


 int PU_STATIC ;
 int P_SpawnMapThing (TYPE_1__*) ;
 void* SHORT (int) ;
 int * W_CacheLumpNum (int,int ) ;
 int W_LumpLength (int) ;
 int Z_Free (int *) ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;

void P_LoadThings (int lump)
{
    byte* data;
    int i;
    mapthing_t* mt;
    int numthings;
    boolean spawn;

    data = W_CacheLumpNum (lump,PU_STATIC);
    numthings = W_LumpLength (lump) / sizeof(mapthing_t);

    mt = (mapthing_t *)data;
    for (i=0 ; i<numthings ; i++, mt++)
    {
 spawn = 1;


 if ( gamemode != commercial)
 {
     switch(mt->type)
     {
       case 68:
       case 64:
       case 88:
       case 89:
       case 69:
       case 67:
       case 71:
       case 65:
       case 66:
       case 84:
  spawn = 0;
  break;
     }
 }
 if (spawn == 0)
     break;


 mt->x = SHORT(mt->x);
 mt->y = SHORT(mt->y);
 mt->angle = SHORT(mt->angle);
 mt->type = SHORT(mt->type);
 mt->options = SHORT(mt->options);

 P_SpawnMapThing (mt);
    }

    Z_Free (data);
}
