
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_r8 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int gif_skip_subblocks(AVIOContext *pb)
{
    int sb_size, ret = 0;

    while (0x00 != (sb_size = avio_r8(pb))) {
        if ((ret = avio_skip(pb, sb_size)) < 0)
            return ret;
    }

    return ret;
}
