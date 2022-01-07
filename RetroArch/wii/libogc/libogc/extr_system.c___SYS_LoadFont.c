
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int width_table; int sheet_column; int sheet_row; } ;
typedef TYPE_1__ sys_fontheader ;


 scalar_t__ __read_font (void*) ;
 int decode_szp (void*,void*) ;
 int sys_fontcharsinsheet ;
 TYPE_1__* sys_fontdata ;
 int * sys_fontwidthtab ;

u32 __SYS_LoadFont(void *src,void *dest)
{
 if(__read_font(src)==0) return 0;

 decode_szp(src,dest);

 sys_fontdata = (sys_fontheader*)dest;
 sys_fontwidthtab = (u8*)dest+sys_fontdata->width_table;
 sys_fontcharsinsheet = sys_fontdata->sheet_column*sys_fontdata->sheet_row;


 return 1;
}
