
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVXTEA {int dummy; } ;


 int av_xtea_le_crypt (struct AVXTEA*,int *,int const*,int,int *,int ) ;
 int av_xtea_le_init (struct AVXTEA*,int ) ;
 int * rtmpe8_keys ;

__attribute__((used)) static void rtmpe8_sig(const uint8_t *in, uint8_t *out, int key_id)
{
    struct AVXTEA ctx;

    av_xtea_le_init(&ctx, rtmpe8_keys[key_id]);
    av_xtea_le_crypt(&ctx, out, in, 1, ((void*)0), 0);
}
