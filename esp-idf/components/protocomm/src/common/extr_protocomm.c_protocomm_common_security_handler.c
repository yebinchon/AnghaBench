
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ssize_t ;
struct TYPE_4__ {int pop; int sec_inst; TYPE_1__* sec; } ;
typedef TYPE_2__ protocomm_t ;
struct TYPE_3__ {int (* security_req_handler ) (int ,int ,int ,int const*,int ,int **,int *,void*) ;} ;


 int ESP_OK ;
 int stub1 (int ,int ,int ,int const*,int ,int **,int *,void*) ;

__attribute__((used)) static int protocomm_common_security_handler(uint32_t session_id,
                                             const uint8_t *inbuf, ssize_t inlen,
                                             uint8_t **outbuf, ssize_t *outlen,
                                             void *priv_data)
{
    protocomm_t *pc = (protocomm_t *) priv_data;

    if (pc->sec && pc->sec->security_req_handler) {
        return pc->sec->security_req_handler(pc->sec_inst,
                                             pc->pop, session_id,
                                             inbuf, inlen,
                                             outbuf, outlen,
                                             priv_data);
    }

    return ESP_OK;
}
