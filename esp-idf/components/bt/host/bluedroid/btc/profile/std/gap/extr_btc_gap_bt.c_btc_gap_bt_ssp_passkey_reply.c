
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int address; } ;
struct TYPE_6__ {int passkey; TYPE_1__ bda; int accept; } ;
struct TYPE_7__ {TYPE_2__ passkey_reply; } ;
typedef TYPE_3__ btc_gap_bt_args_t ;


 int BTA_DmPasskeyReqReply (int ,int ,int ) ;

__attribute__((used)) static void btc_gap_bt_ssp_passkey_reply(btc_gap_bt_args_t *arg)
{
    BTA_DmPasskeyReqReply(arg->passkey_reply.accept, arg->passkey_reply.bda.address, arg->passkey_reply.passkey);
}
