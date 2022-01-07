
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int eof_reached; } ;
typedef TYPE_1__ AVIOContext ;
typedef int AMFDataType ;
 int AVERROR_INVALIDDATA ;
 int avio_r8 (TYPE_1__*) ;
 int avio_rb16 (TYPE_1__*) ;
 int avio_rb32 (TYPE_1__*) ;
 int avio_skip (TYPE_1__*,int) ;

__attribute__((used)) static int amf_skip_tag(AVIOContext *pb, AMFDataType type)
{
    int nb = -1, ret, parse_name = 1;

    switch (type) {
    case 131:
        avio_skip(pb, 8);
        break;
    case 134:
        avio_skip(pb, 1);
        break;
    case 128:
        avio_skip(pb, avio_rb16(pb));
        break;
    case 135:
        parse_name = 0;
    case 133:
        nb = avio_rb32(pb);
    case 130:
        while(!pb->eof_reached && (nb-- > 0 || type != 135)) {
            if (parse_name) {
                int size = avio_rb16(pb);
                if (!size) {
                    avio_skip(pb, 1);
                    break;
                }
                avio_skip(pb, size);
            }
            if ((ret = amf_skip_tag(pb, avio_r8(pb))) < 0)
                return ret;
        }
        break;
    case 132:
    case 129:
        break;
    default:
        return AVERROR_INVALIDDATA;
    }
    return 0;
}
