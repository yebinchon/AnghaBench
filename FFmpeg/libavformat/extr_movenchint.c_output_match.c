
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;

__attribute__((used)) static void output_match(AVIOContext *out, int match_sample,
                         int match_offset, int match_len, int *entries)
{
    avio_w8(out, 2);
    avio_w8(out, 0);
    avio_wb16(out, match_len);
    avio_wb32(out, match_sample);
    avio_wb32(out, match_offset);
    avio_wb16(out, 1);
    avio_wb16(out, 1);
    (*entries)++;
}
