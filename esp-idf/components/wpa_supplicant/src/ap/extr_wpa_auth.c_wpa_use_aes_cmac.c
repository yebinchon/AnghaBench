
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int wpa_key_mgmt; } ;


 scalar_t__ wpa_key_mgmt_ft (int ) ;
 scalar_t__ wpa_key_mgmt_sha256 (int ) ;

__attribute__((used)) static int wpa_use_aes_cmac(struct wpa_state_machine *sm)
{
    int ret = 0;
    return ret;
}
