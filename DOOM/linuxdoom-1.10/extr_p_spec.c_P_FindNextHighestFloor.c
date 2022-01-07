
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int linecount; scalar_t__ floorheight; int ** lines; } ;
typedef TYPE_1__ sector_t ;
typedef int line_t ;
typedef scalar_t__ fixed_t ;


 int MAX_ADJOINING_SECTORS ;
 int fprintf (int ,char*) ;
 TYPE_1__* getNextSector (int *,TYPE_1__*) ;
 int stderr ;

fixed_t
P_FindNextHighestFloor
( sector_t* sec,
  int currentheight )
{
    int i;
    int h;
    int min;
    line_t* check;
    sector_t* other;
    fixed_t height = currentheight;


    fixed_t heightlist[MAX_ADJOINING_SECTORS];

    for (i=0, h=0 ;i < sec->linecount ; i++)
    {
 check = sec->lines[i];
 other = getNextSector(check,sec);

 if (!other)
     continue;

 if (other->floorheight > height)
     heightlist[h++] = other->floorheight;


 if ( h >= MAX_ADJOINING_SECTORS )
 {
     fprintf( stderr,
       "Sector with more than 20 adjoining sectors\n" );
     break;
 }
    }


    if (!h)
 return currentheight;

    min = heightlist[0];


    for (i = 1;i < h;i++)
 if (heightlist[i] < min)
     min = heightlist[i];

    return min;
}
