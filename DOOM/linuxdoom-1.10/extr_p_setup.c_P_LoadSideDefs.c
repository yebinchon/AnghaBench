
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t textureoffset; size_t rowoffset; int * sector; void* midtexture; void* bottomtexture; void* toptexture; } ;
typedef TYPE_1__ side_t ;
struct TYPE_7__ {int sector; int midtexture; int bottomtexture; int toptexture; int rowoffset; int textureoffset; } ;
typedef TYPE_2__ mapsidedef_t ;
typedef int byte ;


 size_t FRACBITS ;
 int PU_LEVEL ;
 int PU_STATIC ;
 void* R_TextureNumForName (int ) ;
 size_t SHORT (int ) ;
 int * W_CacheLumpNum (int,int ) ;
 int W_LumpLength (int) ;
 int Z_Free (int *) ;
 TYPE_1__* Z_Malloc (int,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int numsides ;
 int * sectors ;
 TYPE_1__* sides ;

void P_LoadSideDefs (int lump)
{
    byte* data;
    int i;
    mapsidedef_t* msd;
    side_t* sd;

    numsides = W_LumpLength (lump) / sizeof(mapsidedef_t);
    sides = Z_Malloc (numsides*sizeof(side_t),PU_LEVEL,0);
    memset (sides, 0, numsides*sizeof(side_t));
    data = W_CacheLumpNum (lump,PU_STATIC);

    msd = (mapsidedef_t *)data;
    sd = sides;
    for (i=0 ; i<numsides ; i++, msd++, sd++)
    {
 sd->textureoffset = SHORT(msd->textureoffset)<<FRACBITS;
 sd->rowoffset = SHORT(msd->rowoffset)<<FRACBITS;
 sd->toptexture = R_TextureNumForName(msd->toptexture);
 sd->bottomtexture = R_TextureNumForName(msd->bottomtexture);
 sd->midtexture = R_TextureNumForName(msd->midtexture);
 sd->sector = &sectors[SHORT(msd->sector)];
    }

    Z_Free (data);
}
