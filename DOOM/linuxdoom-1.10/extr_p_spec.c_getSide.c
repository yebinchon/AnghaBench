
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int side_t ;
struct TYPE_4__ {TYPE_1__** lines; } ;
struct TYPE_3__ {size_t* sidenum; } ;


 TYPE_2__* sectors ;
 int * sides ;

side_t*
getSide
( int currentSector,
  int line,
  int side )
{
    return &sides[ (sectors[currentSector].lines[line])->sidenum[side] ];
}
