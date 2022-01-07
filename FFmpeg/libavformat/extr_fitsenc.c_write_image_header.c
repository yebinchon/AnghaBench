
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char uint8_t ;
typedef int buffer ;
struct TYPE_10__ {int format; int width; int height; } ;
struct TYPE_9__ {int pb; TYPE_1__* priv_data; TYPE_2__** streams; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
struct TYPE_7__ {scalar_t__ first_image; } ;
typedef TYPE_1__ FITSContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR (int ) ;






 int EINVAL ;
 int avio_write (int ,char*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,char,int) ;
 int write_keyword_value (TYPE_3__*,char*,int,int*) ;

__attribute__((used)) static int write_image_header(AVFormatContext *s)
{
    AVStream *st = s->streams[0];
    AVCodecParameters *encctx = st->codecpar;
    FITSContext *fitsctx = s->priv_data;
    uint8_t buffer[80];
    int bitpix, naxis, naxis3 = 1, bzero = 0, rgb = 0, lines_written = 0, lines_left;

    switch (encctx->format) {
        case 128:
            bitpix = 8;
            naxis = 2;
            break;
        case 129:
            bitpix = 16;
            naxis = 2;
            bzero = 32768;
            break;
        case 131:
        case 133:
            bitpix = 8;
            naxis = 3;
            rgb = 1;
            if (encctx->format == 131) {
                naxis3 = 3;
            } else {
                naxis3 = 4;
            }
            break;
        case 130:
        case 132:
            bitpix = 16;
            naxis = 3;
            rgb = 1;
            if (encctx->format == 130) {
                naxis3 = 3;
            } else {
                naxis3 = 4;
            }
            bzero = 32768;
            break;
        default:
            return AVERROR(EINVAL);
    }

    if (fitsctx->first_image) {
        memcpy(buffer, "SIMPLE  = ", 10);
        memset(buffer + 10, ' ', 70);
        buffer[29] = 'T';
        avio_write(s->pb, buffer, sizeof(buffer));
    } else {
        memcpy(buffer, "XTENSION= 'IMAGE   '", 20);
        memset(buffer + 20, ' ', 60);
        avio_write(s->pb, buffer, sizeof(buffer));
    }
    lines_written++;

    write_keyword_value(s, "BITPIX", bitpix, &lines_written);
    write_keyword_value(s, "NAXIS", naxis, &lines_written);
    write_keyword_value(s, "NAXIS1", encctx->width, &lines_written);
    write_keyword_value(s, "NAXIS2", encctx->height, &lines_written);

    if (rgb)
        write_keyword_value(s, "NAXIS3", naxis3, &lines_written);

    if (!fitsctx->first_image) {
        write_keyword_value(s, "PCOUNT", 0, &lines_written);
        write_keyword_value(s, "GCOUNT", 1, &lines_written);
    } else {
        fitsctx->first_image = 0;
    }






    if (bitpix == 16)
        write_keyword_value(s, "BZERO", bzero, &lines_written);

    if (rgb) {
        memcpy(buffer, "CTYPE3  = 'RGB     '", 20);
        memset(buffer + 20, ' ', 60);
        avio_write(s->pb, buffer, sizeof(buffer));
        lines_written++;
    }

    memcpy(buffer, "END", 3);
    memset(buffer + 3, ' ', 77);
    avio_write(s->pb, buffer, sizeof(buffer));
    lines_written++;

    lines_left = ((lines_written + 35) / 36) * 36 - lines_written;
    memset(buffer, ' ', 80);
    while (lines_left > 0) {
        avio_write(s->pb, buffer, sizeof(buffer));
        lines_left--;
    }
    return 0;
}
