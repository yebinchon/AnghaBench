
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int hash; int (* update ) (int ,int const*,unsigned int) ;} ;
typedef TYPE_1__ AVHMAC ;


 int stub1 (int ,int const*,unsigned int) ;

void av_hmac_update(AVHMAC *c, const uint8_t *data, unsigned int len)
{
    c->update(c->hash, data, len);
}
