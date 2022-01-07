
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int URLContext ;


 int rtmpe8_sig (int*,int*,int const) ;
 int rtmpe9_sig (int*,int*,int const) ;

void ff_rtmpe_encrypt_sig(URLContext *h, uint8_t *sig, const uint8_t *digest,
                          int type)
{
    int i;

    for (i = 0; i < 32; i += 8) {
        if (type == 8) {

            rtmpe8_sig(sig + i, sig + i, digest[i] % 15);
        } else if (type == 9) {

            rtmpe9_sig(sig + i, sig + i, digest[i] % 15);
        }
    }
}
