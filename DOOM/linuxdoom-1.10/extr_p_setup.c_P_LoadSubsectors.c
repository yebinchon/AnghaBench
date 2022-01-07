
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* firstline; void* numlines; } ;
typedef TYPE_1__ subsector_t ;
struct TYPE_7__ {int firstseg; int numsegs; } ;
typedef TYPE_2__ mapsubsector_t ;
typedef int byte ;


 int PU_LEVEL ;
 int PU_STATIC ;
 void* SHORT (int ) ;
 int * W_CacheLumpNum (int,int ) ;
 int W_LumpLength (int) ;
 int Z_Free (int *) ;
 TYPE_1__* Z_Malloc (int,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int numsubsectors ;
 TYPE_1__* subsectors ;

void P_LoadSubsectors (int lump)
{
    byte* data;
    int i;
    mapsubsector_t* ms;
    subsector_t* ss;

    numsubsectors = W_LumpLength (lump) / sizeof(mapsubsector_t);
    subsectors = Z_Malloc (numsubsectors*sizeof(subsector_t),PU_LEVEL,0);
    data = W_CacheLumpNum (lump,PU_STATIC);

    ms = (mapsubsector_t *)data;
    memset (subsectors,0, numsubsectors*sizeof(subsector_t));
    ss = subsectors;

    for (i=0 ; i<numsubsectors ; i++, ss++, ms++)
    {
 ss->numlines = SHORT(ms->numsegs);
 ss->firstline = SHORT(ms->firstseg);
    }

    Z_Free (data);
}
