
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXFPktType ;
typedef int AVIOContext ;


 int avio_r8 (int *) ;
 int avio_rb32 (int *) ;

__attribute__((used)) static int parse_packet_header(AVIOContext *pb, GXFPktType *type, int *length) {
    if (avio_rb32(pb))
        return 0;
    if (avio_r8(pb) != 1)
        return 0;
    *type = avio_r8(pb);
    *length = avio_rb32(pb);
    if ((*length >> 24) || *length < 16)
        return 0;
    *length -= 16;
    if (avio_rb32(pb))
        return 0;
    if (avio_r8(pb) != 0xe1)
        return 0;
    if (avio_r8(pb) != 0xe2)
        return 0;
    return 1;
}
