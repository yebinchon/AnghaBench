
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTA_DmSearchCancel () ;

__attribute__((used)) static void btc_gap_bt_cancel_discovery(void)
{
    BTA_DmSearchCancel();
}
