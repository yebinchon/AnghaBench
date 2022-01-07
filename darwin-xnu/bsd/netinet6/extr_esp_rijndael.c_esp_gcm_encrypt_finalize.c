
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {int sched; } ;
struct TYPE_2__ {int encrypt; } ;
typedef TYPE_1__ aes_gcm_ctx ;


 int ESP_GCM_ALIGN ;
 scalar_t__ P2ROUNDUP (int ,int ) ;
 int aes_encrypt_finalize_gcm (unsigned char*,unsigned int,int ) ;

int
esp_gcm_encrypt_finalize(struct secasvar *sav,
    unsigned char *tag, unsigned int tag_bytes)
{
 aes_gcm_ctx *ctx = (aes_gcm_ctx*)P2ROUNDUP(sav->sched, ESP_GCM_ALIGN);
 return (aes_encrypt_finalize_gcm(tag, tag_bytes, ctx->encrypt));
}
