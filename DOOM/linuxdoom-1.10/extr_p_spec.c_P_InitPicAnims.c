
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int istexture; int speed; int endname; int startname; } ;
struct TYPE_4__ {int picnum; int basepic; int istexture; int numpics; int speed; } ;


 int I_Error (char*,int ,int ) ;
 int R_CheckTextureNumForName (int ) ;
 void* R_FlatNumForName (int ) ;
 void* R_TextureNumForName (int ) ;
 int W_CheckNumForName (int ) ;
 TYPE_3__* animdefs ;
 TYPE_1__* anims ;
 TYPE_1__* lastanim ;

void P_InitPicAnims (void)
{
    int i;



    lastanim = anims;
    for (i=0 ; animdefs[i].istexture != -1 ; i++)
    {
 if (animdefs[i].istexture)
 {

     if (R_CheckTextureNumForName(animdefs[i].startname) == -1)
  continue;

     lastanim->picnum = R_TextureNumForName (animdefs[i].endname);
     lastanim->basepic = R_TextureNumForName (animdefs[i].startname);
 }
 else
 {
     if (W_CheckNumForName(animdefs[i].startname) == -1)
  continue;

     lastanim->picnum = R_FlatNumForName (animdefs[i].endname);
     lastanim->basepic = R_FlatNumForName (animdefs[i].startname);
 }

 lastanim->istexture = animdefs[i].istexture;
 lastanim->numpics = lastanim->picnum - lastanim->basepic + 1;

 if (lastanim->numpics < 2)
     I_Error ("P_InitPicAnims: bad cycle from %s to %s",
       animdefs[i].startname,
       animdefs[i].endname);

 lastanim->speed = animdefs[i].speed;
 lastanim++;
    }

}
