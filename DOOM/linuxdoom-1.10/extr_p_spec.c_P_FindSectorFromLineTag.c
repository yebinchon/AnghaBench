
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tag; } ;
typedef TYPE_1__ line_t ;
struct TYPE_5__ {scalar_t__ tag; } ;


 int numsectors ;
 TYPE_2__* sectors ;

int
P_FindSectorFromLineTag
( line_t* line,
  int start )
{
    int i;

    for (i=start+1;i<numsectors;i++)
 if (sectors[i].tag == line->tag)
     return i;

    return -1;
}
