
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ validcount; int soundtraversed; int linecount; TYPE_2__** lines; int soundtarget; } ;
typedef TYPE_1__ sector_t ;
struct TYPE_7__ {int flags; size_t* sidenum; } ;
typedef TYPE_2__ line_t ;
struct TYPE_8__ {TYPE_1__* sector; } ;


 int ML_SOUNDBLOCK ;
 int ML_TWOSIDED ;
 int P_LineOpening (TYPE_2__*) ;
 scalar_t__ openrange ;
 TYPE_3__* sides ;
 int soundtarget ;
 scalar_t__ validcount ;

void
P_RecursiveSound
( sector_t* sec,
  int soundblocks )
{
    int i;
    line_t* check;
    sector_t* other;


    if (sec->validcount == validcount
 && sec->soundtraversed <= soundblocks+1)
    {
 return;
    }

    sec->validcount = validcount;
    sec->soundtraversed = soundblocks+1;
    sec->soundtarget = soundtarget;

    for (i=0 ;i<sec->linecount ; i++)
    {
 check = sec->lines[i];
 if (! (check->flags & ML_TWOSIDED) )
     continue;

 P_LineOpening (check);

 if (openrange <= 0)
     continue;

 if ( sides[ check->sidenum[0] ].sector == sec)
     other = sides[ check->sidenum[1] ] .sector;
 else
     other = sides[ check->sidenum[0] ].sector;

 if (check->flags & ML_SOUNDBLOCK)
 {
     if (!soundblocks)
  P_RecursiveSound (other, 1);
 }
 else
     P_RecursiveSound (other, soundblocks);
    }
}
