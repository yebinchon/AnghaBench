
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* byte ;
typedef scalar_t__ boolean ;
struct TYPE_2__ {int rotate; int* lump; void** flip; } ;


 int I_Error (char*,int,...) ;
 int firstspritelump ;
 int maxframe ;
 int spritename ;
 TYPE_1__* sprtemp ;

void
R_InstallSpriteLump
( int lump,
  unsigned frame,
  unsigned rotation,
  boolean flipped )
{
    int r;

    if (frame >= 29 || rotation > 8)
 I_Error("R_InstallSpriteLump: "
  "Bad frame characters in lump %i", lump);

    if ((int)frame > maxframe)
 maxframe = frame;

    if (rotation == 0)
    {

 if (sprtemp[frame].rotate == 0)
     I_Error ("R_InitSprites: Sprite %s frame %c has "
       "multip rot=0 lump", spritename, 'A'+frame);

 if (sprtemp[frame].rotate == 1)
     I_Error ("R_InitSprites: Sprite %s frame %c has rotations "
       "and a rot=0 lump", spritename, 'A'+frame);

 sprtemp[frame].rotate = 0;
 for (r=0 ; r<8 ; r++)
 {
     sprtemp[frame].lump[r] = lump - firstspritelump;
     sprtemp[frame].flip[r] = (byte)flipped;
 }
 return;
    }


    if (sprtemp[frame].rotate == 0)
 I_Error ("R_InitSprites: Sprite %s frame %c has rotations "
   "and a rot=0 lump", spritename, 'A'+frame);

    sprtemp[frame].rotate = 1;


    rotation--;
    if (sprtemp[frame].lump[rotation] != -1)
 I_Error ("R_InitSprites: Sprite %s : %c : %c "
   "has two lumps mapped to it",
   spritename, 'A'+frame, '1'+rotation);

    sprtemp[frame].lump[rotation] = lump - firstspritelump;
    sprtemp[frame].flip[rotation] = (byte)flipped;
}
