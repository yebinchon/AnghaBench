
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int cardcallback ;


 int SYS_GetFontEncoding () ;
 int __card_formatregion (int ,int ,int ) ;

s32 CARD_FormatAsync(s32 chn,cardcallback callback)
{
 u32 enc;

 enc = SYS_GetFontEncoding();
 return __card_formatregion(chn,enc,callback);
}
