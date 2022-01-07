
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* blockbox; } ;
typedef TYPE_1__ sector_t ;
typedef int boolean ;


 size_t BOXBOTTOM ;
 size_t BOXLEFT ;
 size_t BOXRIGHT ;
 size_t BOXTOP ;
 int PIT_ChangeSector ;
 int P_BlockThingsIterator (int,int,int ) ;
 int crushchange ;
 int nofit ;

boolean
P_ChangeSector
( sector_t* sector,
  boolean crunch )
{
    int x;
    int y;

    nofit = 0;
    crushchange = crunch;


    for (x=sector->blockbox[BOXLEFT] ; x<= sector->blockbox[BOXRIGHT] ; x++)
 for (y=sector->blockbox[BOXBOTTOM];y<= sector->blockbox[BOXTOP] ; y++)
     P_BlockThingsIterator (x, y, PIT_ChangeSector);


    return nofit;
}
