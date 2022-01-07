
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sector_t ;
struct TYPE_6__ {TYPE_1__** lines; } ;
struct TYPE_5__ {int * sector; } ;
struct TYPE_4__ {size_t* sidenum; } ;


 TYPE_3__* sectors ;
 TYPE_2__* sides ;

sector_t*
getSector
( int currentSector,
  int line,
  int side )
{
    return sides[ (sectors[currentSector].lines[line])->sidenum[side] ].sector;
}
