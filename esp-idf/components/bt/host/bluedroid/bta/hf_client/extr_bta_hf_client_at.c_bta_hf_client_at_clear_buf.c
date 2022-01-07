
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; int buf; } ;
struct TYPE_5__ {TYPE_1__ at_cb; } ;
struct TYPE_6__ {TYPE_2__ scb; } ;


 TYPE_3__ bta_hf_client_cb ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void bta_hf_client_at_clear_buf(void)
{
    memset(bta_hf_client_cb.scb.at_cb.buf, 0, sizeof(bta_hf_client_cb.scb.at_cb.buf));
    bta_hf_client_cb.scb.at_cb.offset = 0;
}
