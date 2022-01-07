
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;


 int I_Error (char*,int) ;
 TYPE_1__* lumpinfo ;
 int numlumps ;

int W_LumpLength (int lump)
{
    if (lump >= numlumps)
 I_Error ("W_LumpLength: %i >= numlumps",lump);

    return lumpinfo[lump].size;
}
