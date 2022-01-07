
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int sheet_image; int first_char; int last_char; int inval_char; int width_table; int cell_height; int cell_width; } ;
typedef TYPE_1__ sys_fontheader ;


 int __SYS_ReadROM (void*,int,int) ;
 int decode_szp (void*,void*) ;
 int expand_font (int *,int *) ;
 int fheight ;
 TYPE_1__* fontHeader ;
 int * fontImage ;
 void* fontTexture ;
 int * font_size ;
 int free (void*) ;
 void* ipl_fontarea ;
 int ipl_set_config (int) ;
 void* memalign (int,int) ;
 int memset (void*,int ,int) ;

int FONT_Init(void)
{


  ipl_set_config(6);



  ipl_fontarea = memalign(32,131360);
  if (!ipl_fontarea)
    return 0;
  memset(ipl_fontarea,0,131360);
  __SYS_ReadROM(ipl_fontarea+119072,12288,0x1FCF00);


  decode_szp(ipl_fontarea+119072,ipl_fontarea);


  fontHeader = (sys_fontheader*)ipl_fontarea;
  fontImage = (u8*)((((u32)ipl_fontarea+fontHeader->sheet_image)+31)&~31);


  expand_font((u8*)ipl_fontarea+fontHeader->sheet_image,fontImage);


  int i,c;
  for (i=0; i<256; ++i)
  {
    if ((i < fontHeader->first_char) || (i > fontHeader->last_char))
      c = fontHeader->inval_char;
    else
      c = i - fontHeader->first_char;

    font_size[i] = ((u8*)fontHeader)[fontHeader->width_table + c];
  }


  fheight = fontHeader->cell_height;


  fontTexture = memalign(32, fontHeader->cell_width * fontHeader->cell_height / 2);
  if (!fontTexture)
  {
    free(ipl_fontarea);
    return 0;
  }

  return 1;
}
