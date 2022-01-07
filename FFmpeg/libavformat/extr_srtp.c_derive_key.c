
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVAES {int dummy; } ;


 int encrypt_counter (struct AVAES*,int*,int*,int) ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void derive_key(struct AVAES *aes, const uint8_t *salt, int label,
                       uint8_t *out, int outlen)
{
    uint8_t input[16] = { 0 };
    memcpy(input, salt, 14);

    input[14 - 7] ^= label;
    memset(out, 0, outlen);
    encrypt_counter(aes, input, out, outlen);
}
