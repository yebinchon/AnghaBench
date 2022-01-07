
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int sheet_image; } ;
typedef TYPE_1__ sys_fontheader ;


 int SYS_FONTSIZE_ANSI ;
 int SYS_FONTSIZE_SJIS ;
 int SYS_GetFontEncoding () ;
 int __SYS_LoadFont (void*,TYPE_1__*) ;
 int __expand_font (int *,int *) ;
 int memset (TYPE_1__*,int ,int ) ;
 int * sys_fontimage ;

u32 SYS_InitFont(sys_fontheader *font_data)
{
 void *packed_data = ((void*)0);

 if(!font_data) return 0;

 if(SYS_GetFontEncoding()==1) {
  memset(font_data,0,SYS_FONTSIZE_SJIS);
  packed_data = (void*)((u32)font_data+868096);
 } else {
  memset(font_data,0,SYS_FONTSIZE_ANSI);
  packed_data = (void*)((u32)font_data+119072);
 }

 if(__SYS_LoadFont(packed_data,font_data)==1) {
  sys_fontimage = (u8*)((((u32)font_data+font_data->sheet_image)+31)&~31);
  __expand_font((u8*)font_data+font_data->sheet_image,sys_fontimage);
  return 1;
 }

 return 0;
}
