
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nreslevels; } ;
struct TYPE_5__ {int quantsty; int nguardbits; int* expn; int* mant; } ;
struct TYPE_6__ {int buf_end; int buf; TYPE_1__ qntsty; TYPE_3__ codsty; } ;
typedef TYPE_1__ Jpeg2000QuantStyle ;
typedef TYPE_2__ Jpeg2000EncoderContext ;
typedef TYPE_3__ Jpeg2000CodingStyle ;


 int JPEG2000_QCD ;
 int JPEG2000_QSTY_NONE ;
 int bytestream_put_be16 (int*,int) ;
 int bytestream_put_byte (int*,int) ;

__attribute__((used)) static int put_qcd(Jpeg2000EncoderContext *s, int compno)
{
    int i, size;
    Jpeg2000CodingStyle *codsty = &s->codsty;
    Jpeg2000QuantStyle *qntsty = &s->qntsty;

    if (qntsty->quantsty == JPEG2000_QSTY_NONE)
        size = 4 + 3 * (codsty->nreslevels-1);
    else
        size = 5 + 6 * (codsty->nreslevels-1);

    if (s->buf_end - s->buf < size + 2)
        return -1;

    bytestream_put_be16(&s->buf, JPEG2000_QCD);
    bytestream_put_be16(&s->buf, size);
    bytestream_put_byte(&s->buf, (qntsty->nguardbits << 5) | qntsty->quantsty);
    if (qntsty->quantsty == JPEG2000_QSTY_NONE)
        for (i = 0; i < codsty->nreslevels * 3 - 2; i++)
            bytestream_put_byte(&s->buf, qntsty->expn[i] << 3);
    else
        for (i = 0; i < codsty->nreslevels * 3 - 2; i++)
            bytestream_put_be16(&s->buf, (qntsty->expn[i] << 11) | qntsty->mant[i]);
    return 0;
}
