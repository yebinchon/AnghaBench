
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MOVTrack ;
typedef int AVIOContext ;


 int FF_ARRAY_ELEMS (unsigned int*) ;
 int avio_wb16 (int *,unsigned int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 unsigned int* fiel_data ;

__attribute__((used)) static int mov_write_fiel_tag(AVIOContext *pb, MOVTrack *track, int field_order)
{
    unsigned mov_field_order = 0;
    if (field_order < FF_ARRAY_ELEMS(fiel_data))
        mov_field_order = fiel_data[field_order];
    else
        return 0;
    avio_wb32(pb, 10);
    ffio_wfourcc(pb, "fiel");
    avio_wb16(pb, mov_field_order);
    return 10;
}
