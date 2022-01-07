
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_dref_tag(AVIOContext *pb)
{
    avio_wb32(pb, 28);
    ffio_wfourcc(pb, "dref");
    avio_wb32(pb, 0);
    avio_wb32(pb, 1);

    avio_wb32(pb, 0xc);

    ffio_wfourcc(pb, "url ");
    avio_wb32(pb, 1);

    return 28;
}
