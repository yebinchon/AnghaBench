
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {int l; scalar_t__ d; int rtp_buf_size; TYPE_1__* fec_row_hd; TYPE_1__* fec_col_hd; int length_recovery; int rtp_row_sn; int rtp_col_sn; scalar_t__* rtp_buf; } ;
struct TYPE_8__ {int sn; int ts; scalar_t__* bitstring; } ;
typedef TYPE_2__ PrompegFec ;
typedef TYPE_3__ PrompegContext ;


 int AV_WB16 (scalar_t__*,int ) ;
 int AV_WB32 (scalar_t__*,int ) ;
 scalar_t__ PROMPEG_FEC_COL ;
 scalar_t__ PROMPEG_RTP_PT ;
 int ffurl_write (TYPE_1__*,scalar_t__*,int ) ;
 int memcpy (scalar_t__*,scalar_t__*,int ) ;

__attribute__((used)) static int prompeg_write_fec(URLContext *h, PrompegFec *fec, uint8_t type) {
    PrompegContext *s = h->priv_data;
    URLContext *hd;
    uint8_t *buf = s->rtp_buf;
    uint8_t *b = fec->bitstring;
    uint16_t sn;
    int ret;

    sn = type == PROMPEG_FEC_COL ? ++s->rtp_col_sn : ++s->rtp_row_sn;


    buf[0] = 0x80 | (b[0] & 0x3f);

    buf[1] = (b[1] & 0x80) | PROMPEG_RTP_PT;

    AV_WB16(buf + 2, sn);

    AV_WB32(buf + 4, fec->ts);



    AV_WB16(buf + 12, fec->sn);

    buf[14] = b[6];
    buf[15] = b[7];

    buf[16] = 0x80 | b[1];





    buf[20] = b[2];
    buf[21] = b[3];
    buf[22] = b[4];
    buf[23] = b[5];

    buf[24] = type == PROMPEG_FEC_COL ? 0x0 : 0x40;

    buf[25] = type == PROMPEG_FEC_COL ? s->l : 0x1;

    buf[26] = type == PROMPEG_FEC_COL ? s->d : s->l;



    memcpy(buf + 28, b + 8, s->length_recovery);

    hd = type == PROMPEG_FEC_COL ? s->fec_col_hd : s->fec_row_hd;
    ret = ffurl_write(hd, buf, s->rtp_buf_size);
    return ret;
}
