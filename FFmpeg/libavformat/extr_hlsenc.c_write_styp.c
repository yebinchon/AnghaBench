
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static void write_styp(AVIOContext *pb)
{
    avio_wb32(pb, 24);
    ffio_wfourcc(pb, "styp");
    ffio_wfourcc(pb, "msdh");
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "msdh");
    ffio_wfourcc(pb, "msix");
}
