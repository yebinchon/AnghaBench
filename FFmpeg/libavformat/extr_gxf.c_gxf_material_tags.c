
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct gxf_stream_info {void* last_field; void* first_field; } ;
typedef scalar_t__ GXFMatTag ;
typedef int AVIOContext ;


 void* AV_NOPTS_VALUE ;
 scalar_t__ MAT_FIRST_FIELD ;
 scalar_t__ MAT_LAST_FIELD ;
 void* avio_r8 (int *) ;
 void* avio_rb32 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static void gxf_material_tags(AVIOContext *pb, int *len, struct gxf_stream_info *si) {
    si->first_field = AV_NOPTS_VALUE;
    si->last_field = AV_NOPTS_VALUE;
    while (*len >= 2) {
        GXFMatTag tag = avio_r8(pb);
        int tlen = avio_r8(pb);
        *len -= 2;
        if (tlen > *len)
            return;
        *len -= tlen;
        if (tlen == 4) {
            uint32_t value = avio_rb32(pb);
            if (tag == MAT_FIRST_FIELD)
                si->first_field = value;
            else if (tag == MAT_LAST_FIELD)
                si->last_field = value;
        } else
            avio_skip(pb, tlen);
    }
}
