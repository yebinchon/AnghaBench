
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
typedef int uint32_t ;
struct AVDES {int dummy; } ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {unsigned int k_size; int rid; int r_val; } ;
typedef TYPE_1__ OMAContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_RB32 (int *) ;
 int ENOMEM ;
 unsigned int OMA_ENC_HEADER_SIZE ;
 struct AVDES* av_des_alloc () ;
 int av_des_crypt (struct AVDES*,int ,int *,int,int *,int) ;
 int av_des_init (struct AVDES*,int const*,int,int) ;
 int av_free (struct AVDES*) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int kset (TYPE_2__*,int ,int *,int) ;
 int memcmp (int *,char*,int) ;
 int rprobe (TYPE_2__*,int *,unsigned int,int ) ;

__attribute__((used)) static int nprobe(AVFormatContext *s, uint8_t *enc_header, unsigned size,
                  const uint8_t *n_val)
{
    OMAContext *oc = s->priv_data;
    uint64_t pos;
    uint32_t taglen, datalen;
    struct AVDES *av_des;

    if (!enc_header || !n_val ||
        size < OMA_ENC_HEADER_SIZE + oc->k_size + 4)
        return -1;

    pos = OMA_ENC_HEADER_SIZE + oc->k_size;
    if (!memcmp(&enc_header[pos], "EKB ", 4))
        pos += 32;

    if (size < pos + 44)
        return -1;

    if (AV_RB32(&enc_header[pos]) != oc->rid)
        av_log(s, AV_LOG_DEBUG, "Mismatching RID\n");

    taglen = AV_RB32(&enc_header[pos + 32]);
    datalen = AV_RB32(&enc_header[pos + 36]) >> 4;

    pos += 44LL + taglen;

    if (pos + (((uint64_t)datalen) << 4) > size)
        return -1;

    av_des = av_des_alloc();
    if (!av_des)
        return AVERROR(ENOMEM);

    av_des_init(av_des, n_val, 192, 1);
    while (datalen-- > 0) {
        av_des_crypt(av_des, oc->r_val, &enc_header[pos], 2, ((void*)0), 1);
        kset(s, oc->r_val, ((void*)0), 16);
        if (!rprobe(s, enc_header, size, oc->r_val)) {
            av_free(av_des);
            return 0;
        }
        pos += 16;
    }

    av_free(av_des);
    return -1;
}
