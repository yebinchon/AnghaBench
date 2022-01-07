
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct SRTPContext {int rtp_hmac_size; int rtcp_hmac_size; int rtcp_auth; int master_salt; int aes; int rtcp_salt; int rtcp_key; int rtp_auth; int rtp_salt; int rtp_key; int master_key; int hmac; } ;
typedef int buf ;


 int AVERROR (int ) ;
 int AV_HMAC_SHA1 ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int ENOMEM ;
 int av_aes_alloc () ;
 int av_aes_init (int ,int ,int,int ) ;
 int av_base64_decode (int *,char const*,int) ;
 int av_hmac_alloc (int ) ;
 int av_log (int *,int ,char*,...) ;
 int derive_key (int ,int ,int,int ,int) ;
 int ff_srtp_free (struct SRTPContext*) ;
 int memcpy (int ,int *,int) ;
 int strcmp (char const*,char*) ;

int ff_srtp_set_crypto(struct SRTPContext *s, const char *suite,
                       const char *params)
{
    uint8_t buf[30];

    ff_srtp_free(s);


    if (!strcmp(suite, "AES_CM_128_HMAC_SHA1_80") ||
        !strcmp(suite, "SRTP_AES128_CM_HMAC_SHA1_80")) {
        s->rtp_hmac_size = s->rtcp_hmac_size = 10;
    } else if (!strcmp(suite, "AES_CM_128_HMAC_SHA1_32")) {
        s->rtp_hmac_size = s->rtcp_hmac_size = 4;
    } else if (!strcmp(suite, "SRTP_AES128_CM_HMAC_SHA1_32")) {

        s->rtp_hmac_size = 4;
        s->rtcp_hmac_size = 10;
    } else {
        av_log(((void*)0), AV_LOG_WARNING, "SRTP Crypto suite %s not supported\n",
                                     suite);
        return AVERROR(EINVAL);
    }
    if (av_base64_decode(buf, params, sizeof(buf)) != sizeof(buf)) {
        av_log(((void*)0), AV_LOG_WARNING, "Incorrect amount of SRTP params\n");
        return AVERROR(EINVAL);
    }

    s->aes = av_aes_alloc();
    s->hmac = av_hmac_alloc(AV_HMAC_SHA1);
    if (!s->aes || !s->hmac)
        return AVERROR(ENOMEM);
    memcpy(s->master_key, buf, 16);
    memcpy(s->master_salt, buf + 16, 14);


    av_aes_init(s->aes, s->master_key, 128, 0);

    derive_key(s->aes, s->master_salt, 0x00, s->rtp_key, sizeof(s->rtp_key));
    derive_key(s->aes, s->master_salt, 0x02, s->rtp_salt, sizeof(s->rtp_salt));
    derive_key(s->aes, s->master_salt, 0x01, s->rtp_auth, sizeof(s->rtp_auth));

    derive_key(s->aes, s->master_salt, 0x03, s->rtcp_key, sizeof(s->rtcp_key));
    derive_key(s->aes, s->master_salt, 0x05, s->rtcp_salt, sizeof(s->rtcp_salt));
    derive_key(s->aes, s->master_salt, 0x04, s->rtcp_auth, sizeof(s->rtcp_auth));
    return 0;
}
