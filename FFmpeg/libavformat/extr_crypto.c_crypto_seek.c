
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
typedef int errbuf ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int flags; scalar_t__ position; int hd; int ivlen; int iv; int decrypt_iv; int outbuffer; int outptr; scalar_t__ indata_used; scalar_t__ indata; scalar_t__ outdata; scalar_t__ eof; } ;
typedef TYPE_2__ CryptoContext ;


 scalar_t__ AVERROR (int ) ;
 int AVIO_FLAG_WRITE ;

 int AV_LOG_ERROR ;
 scalar_t__ BLOCKSIZE ;
 int EINVAL ;
 int ESPIPE ;



 int av_log (TYPE_1__*,int ,char*,...) ;
 int av_strerror (int,char*,int) ;
 int crypto_read (TYPE_1__*,int *,int) ;
 scalar_t__ ffurl_seek (int ,scalar_t__,int const) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int64_t crypto_seek(URLContext *h, int64_t pos, int whence)
{
    CryptoContext *c = h->priv_data;
    int64_t block;
    int64_t newpos;

    if (c->flags & AVIO_FLAG_WRITE) {
        av_log(h, AV_LOG_ERROR,
            "Crypto: seek not supported for write\r\n");

        return AVERROR(ESPIPE);
    }


    c->eof = 0;

    switch (whence) {
    case 128:
        break;
    case 130:
        pos = pos + c->position;
        break;
    case 129: {
        int64_t newpos = ffurl_seek( c->hd, pos, 131 );
        if (newpos < 0) {
            av_log(h, AV_LOG_ERROR,
                "Crypto: seek_end - can't get file size (pos=%lld)\r\n", (long long int)pos);
            return newpos;
        }
        pos = newpos - pos;
        }
        break;
    case 131: {
        int64_t newpos = ffurl_seek( c->hd, pos, 131 );
        return newpos;
        }
        break;
    default:
        av_log(h, AV_LOG_ERROR,
            "Crypto: no support for seek where 'whence' is %d\r\n", whence);
        return AVERROR(EINVAL);
    }

    c->outdata = 0;
    c->indata = 0;
    c->indata_used = 0;
    c->outptr = c->outbuffer;



    block = pos/BLOCKSIZE;
    if (block == 0) {

        memcpy( c->decrypt_iv, c->iv, c->ivlen );
        c->position = 0;
    } else {




        block--;
        c->position = (block * BLOCKSIZE);
    }

    newpos = ffurl_seek( c->hd, c->position, 128 );
    if (newpos < 0) {
        av_log(h, AV_LOG_ERROR,
            "Crypto: nested protocol no support for seek or seek failed\n");
        return newpos;
    }



    if (pos - c->position) {
        uint8_t buff[BLOCKSIZE*2];
        int len = pos - c->position;
        int res;

        while (len > 0) {

            res = crypto_read(h, buff, len);
            if (res < 0)
                break;
            len -= res;
        }


        if (len != 0) {
            char errbuf[100] = "unknown error";
            av_strerror(res, errbuf, sizeof(errbuf));
            av_log(h, AV_LOG_ERROR,
                "Crypto: discard read did not get all the bytes (%d remain) - read returned (%d)-%s\n",
                len, res, errbuf);
            return AVERROR(EINVAL);
        }
    }

    return c->position;
}
