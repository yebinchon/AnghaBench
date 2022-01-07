
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_state_machine {scalar_t__ pairwise; int wpa_key_mgmt; int SNonce; int ANonce; int addr; TYPE_1__* wpa_auth; } ;
struct wpa_ptk {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int PMK_LEN ;
 scalar_t__ WPA_CIPHER_TKIP ;
 int wpa_auth_derive_ptk_ft (struct wpa_state_machine*,int const*,struct wpa_ptk*,size_t) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 int wpa_key_mgmt_sha256 (int ) ;
 int wpa_pmk_to_ptk (int const*,int ,char*,int ,int ,int ,int ,int *,size_t,int ) ;

__attribute__((used)) static int wpa_derive_ptk(struct wpa_state_machine *sm, const u8 *pmk,
              struct wpa_ptk *ptk)
{
    size_t ptk_len = sm->pairwise != WPA_CIPHER_TKIP ? 48 : 64;





    wpa_pmk_to_ptk(pmk, PMK_LEN, "Pairwise key expansion",
               sm->wpa_auth->addr, sm->addr, sm->ANonce, sm->SNonce,
               (u8 *) ptk, ptk_len,
               wpa_key_mgmt_sha256(sm->wpa_key_mgmt));

    return 0;
}
