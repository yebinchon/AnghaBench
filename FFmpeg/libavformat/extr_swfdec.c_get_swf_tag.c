
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AVERROR_EOF ;
 scalar_t__ avio_feof (int *) ;
 int avio_rl16 (int *) ;
 int avio_rl32 (int *) ;

__attribute__((used)) static int get_swf_tag(AVIOContext *pb, int *len_ptr)
{
    int tag, len;

    if (avio_feof(pb))
        return AVERROR_EOF;

    tag = avio_rl16(pb);
    len = tag & 0x3f;
    tag = tag >> 6;
    if (len == 0x3f) {
        len = avio_rl32(pb);
    }
    *len_ptr = len;
    return tag;
}
