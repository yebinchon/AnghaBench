
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int rounds; int (* crypt ) (TYPE_1__*,int *,int const*,int,int *,int ) ;} ;
typedef TYPE_1__ AVAES ;


 int stub1 (TYPE_1__*,int *,int const*,int,int *,int ) ;

void av_aes_crypt(AVAES *a, uint8_t *dst, const uint8_t *src,
                  int count, uint8_t *iv, int decrypt)
{
    a->crypt(a, dst, src, count, iv, a->rounds);
}
