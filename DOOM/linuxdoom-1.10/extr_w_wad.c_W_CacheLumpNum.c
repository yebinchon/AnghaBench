
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int I_Error (char*,int) ;
 int W_LumpLength (int) ;
 int W_ReadLump (int,void*) ;
 int Z_ChangeTag (void*,int) ;
 int * Z_Malloc (int ,int,void**) ;
 void** lumpcache ;
 unsigned int numlumps ;

void*
W_CacheLumpNum
( int lump,
  int tag )
{
    byte* ptr;

    if ((unsigned)lump >= numlumps)
 I_Error ("W_CacheLumpNum: %i >= numlumps",lump);

    if (!lumpcache[lump])
    {



 ptr = Z_Malloc (W_LumpLength (lump), tag, &lumpcache[lump]);
 W_ReadLump (lump, lumpcache[lump]);
    }
    else
    {

 Z_ChangeTag (lumpcache[lump],tag);
    }

    return lumpcache[lump];
}
