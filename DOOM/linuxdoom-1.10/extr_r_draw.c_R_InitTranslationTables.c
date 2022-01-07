
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int PU_STATIC ;
 int* Z_Malloc (int,int ,int ) ;
 int* translationtables ;

void R_InitTranslationTables (void)
{
    int i;

    translationtables = Z_Malloc (256*3+255, PU_STATIC, 0);
    translationtables = (byte *)(( (int)translationtables + 255 )& ~255);


    for (i=0 ; i<256 ; i++)
    {
 if (i >= 0x70 && i<= 0x7f)
 {

     translationtables[i] = 0x60 + (i&0xf);
     translationtables [i+256] = 0x40 + (i&0xf);
     translationtables [i+512] = 0x20 + (i&0xf);
 }
 else
 {

     translationtables[i] = translationtables[i+256]
  = translationtables[i+512] = i;
 }
    }
}
