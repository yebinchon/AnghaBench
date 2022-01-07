
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int PU_CACHE ;
 int R_GenerateComposite (int) ;
 scalar_t__ W_CacheLumpNum (int,int ) ;
 int** texturecolumnlump ;
 int** texturecolumnofs ;
 int ** texturecomposite ;
 int* texturewidthmask ;

byte*
R_GetColumn
( int tex,
  int col )
{
    int lump;
    int ofs;

    col &= texturewidthmask[tex];
    lump = texturecolumnlump[tex][col];
    ofs = texturecolumnofs[tex][col];

    if (lump > 0)
 return (byte *)W_CacheLumpNum(lump,PU_CACHE)+ofs;

    if (!texturecomposite[tex])
 R_GenerateComposite (tex);

    return texturecomposite[tex] + ofs;
}
