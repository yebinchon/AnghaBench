
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sector_t ;
struct TYPE_3__ {int flags; int * frontsector; int * backsector; } ;
typedef TYPE_1__ line_t ;


 int ML_TWOSIDED ;

sector_t*
getNextSector
( line_t* line,
  sector_t* sec )
{
    if (!(line->flags & ML_TWOSIDED))
 return ((void*)0);

    if (line->frontsector == sec)
 return line->backsector;

    return line->frontsector;
}
