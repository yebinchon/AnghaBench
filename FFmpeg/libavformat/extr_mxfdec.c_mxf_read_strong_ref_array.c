
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int UID ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * av_calloc (int,int) ;
 int avio_rb32 (int *) ;
 int avio_read (int *,int *,int) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int mxf_read_strong_ref_array(AVIOContext *pb, UID **refs, int *count)
{
    *count = avio_rb32(pb);
    *refs = av_calloc(*count, sizeof(UID));
    if (!*refs) {
        *count = 0;
        return AVERROR(ENOMEM);
    }
    avio_skip(pb, 4);
    avio_read(pb, (uint8_t *)*refs, *count * sizeof(UID));
    return 0;
}
