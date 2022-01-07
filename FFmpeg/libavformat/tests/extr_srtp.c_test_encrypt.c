
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct SRTPContext {int member_0; } ;
typedef int buf ;


 int RTP_MAX_PACKET_LENGTH ;
 int ff_srtp_decrypt (struct SRTPContext*,char*,int*) ;
 int ff_srtp_encrypt (struct SRTPContext*,int const*,int,char*,int) ;
 int ff_srtp_free (struct SRTPContext*) ;
 int ff_srtp_set_crypto (struct SRTPContext*,char const*,char const*) ;
 int memcmp (char*,int const*,int) ;
 int printf (char*) ;

__attribute__((used)) static void test_encrypt(const uint8_t *data, int in_len, const char *suite,
                         const char *key)
{
    struct SRTPContext enc = { 0 }, dec = { 0 };
    int len;
    char buf[RTP_MAX_PACKET_LENGTH];
    ff_srtp_set_crypto(&enc, suite, key);
    ff_srtp_set_crypto(&dec, suite, key);
    len = ff_srtp_encrypt(&enc, data, in_len, buf, sizeof(buf));
    if (!ff_srtp_decrypt(&dec, buf, &len)) {
        if (len == in_len && !memcmp(buf, data, len))
            printf("Decrypted content matches input\n");
        else
            printf("Decrypted content doesn't match input\n");
    } else {
        printf("Decryption failed\n");
    }
    ff_srtp_free(&enc);
    ff_srtp_free(&dec);
}
