
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ff_asf_guid ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int av_assert0 (int) ;
 int avio_read (int *,int ,int) ;
 int memset (int ,int ,int) ;

int ff_get_guid(AVIOContext *s, ff_asf_guid *g)
{
    int ret;
    av_assert0(sizeof(*g) == 16);
    ret = avio_read(s, *g, sizeof(*g));
    if (ret < (int)sizeof(*g)) {
        memset(*g, 0, sizeof(*g));
        return ret < 0 ? ret : AVERROR_INVALIDDATA;
    }
    return 0;
}
