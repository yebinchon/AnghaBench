
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ff_asf_guid ;
typedef int AVIOContext ;


 int av_assert0 (int) ;
 int avio_write (int *,int const,int) ;

void ff_put_guid(AVIOContext *s, const ff_asf_guid *g)
{
    av_assert0(sizeof(*g) == 16);
    avio_write(s, *g, sizeof(*g));
}
