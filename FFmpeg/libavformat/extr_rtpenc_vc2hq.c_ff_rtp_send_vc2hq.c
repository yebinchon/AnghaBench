
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int AVFormatContext ;


 scalar_t__ AV_RB32 (int const*) ;
 scalar_t__ DIRAC_DATA_UNIT_HEADER_SIZE ;





 int avpriv_report_missing_feature (int *,char*,int) ;
 int send_packet (int *,int,int ,int const*,scalar_t__,int ,int ,int ) ;
 int send_picture (int *,int const*,scalar_t__,int) ;

void ff_rtp_send_vc2hq(AVFormatContext *ctx, const uint8_t *frame_buf, int frame_size, int interlaced)
{
    const uint8_t *end = frame_buf + frame_size;
    const uint8_t *unit = frame_buf;
    uint8_t parse_code;
    uint32_t unit_size;

    while (unit < end) {
        parse_code = unit[4];
        unit_size = AV_RB32(&unit[5]);

        switch (parse_code) {


        case 128:
        case 131:
            send_packet(ctx, parse_code, 0, unit + DIRAC_DATA_UNIT_HEADER_SIZE, unit_size - DIRAC_DATA_UNIT_HEADER_SIZE, 0, 0, 0);
            break;

        case 129:
            send_picture(ctx, unit + DIRAC_DATA_UNIT_HEADER_SIZE, unit_size - DIRAC_DATA_UNIT_HEADER_SIZE, interlaced);
            break;

        case 132:
        case 130:
            break;
        default:
            avpriv_report_missing_feature(ctx, "VC-2 parse code %d", parse_code);
            break;
        }
        unit += unit_size;
    }
}
