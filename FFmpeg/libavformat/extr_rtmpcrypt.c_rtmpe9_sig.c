
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct AVBlowfish {int dummy; } ;


 int AV_RL32 (int const*) ;
 int AV_WL32 (int *,int ) ;
 int av_blowfish_crypt_ecb (struct AVBlowfish*,int *,int *,int ) ;
 int av_blowfish_init (struct AVBlowfish*,int ,int) ;
 int * rtmpe9_keys ;

__attribute__((used)) static void rtmpe9_sig(const uint8_t *in, uint8_t *out, int key_id)
{
    struct AVBlowfish ctx;
    uint32_t xl, xr;

    xl = AV_RL32(in);
    xr = AV_RL32(in + 4);

    av_blowfish_init(&ctx, rtmpe9_keys[key_id], 24);
    av_blowfish_crypt_ecb(&ctx, &xl, &xr, 0);

    AV_WL32(out, xl);
    AV_WL32(out + 4, xr);
}
