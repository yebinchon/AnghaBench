
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SYS_GetFontEncoding () ;
 int __SYS_ReadROM (void*,int,int) ;
 int __get_fontsize (void*) ;

__attribute__((used)) static u32 __read_font(void *buffer)
{
 if(SYS_GetFontEncoding()==1) __SYS_ReadROM(buffer,315392,1769216);
 else __SYS_ReadROM(buffer,12288,2084608);
 return __get_fontsize(buffer);
}
