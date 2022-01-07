
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int ascii_to_wc (int *,char const*) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int language_code (char const*) ;
 int utf8len (char const*) ;

__attribute__((used)) static void mov_write_psp_udta_tag(AVIOContext *pb,
                                   const char *str, const char *lang, int type)
{
    int len = utf8len(str) + 1;
    if (len <= 0)
        return;
    avio_wb16(pb, len * 2 + 10);
    avio_wb32(pb, type);
    avio_wb16(pb, language_code(lang));
    avio_wb16(pb, 0x01);
    ascii_to_wc(pb, str);
}
