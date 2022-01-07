
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int ff_asf_guid ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_wl64 (int *,int) ;
 int ff_put_guid (int *,int const*) ;

__attribute__((used)) static int64_t put_header(AVIOContext *pb, const ff_asf_guid *g)
{
    int64_t pos;

    pos = avio_tell(pb);
    ff_put_guid(pb, g);
    avio_wl64(pb, 24);
    return pos;
}
