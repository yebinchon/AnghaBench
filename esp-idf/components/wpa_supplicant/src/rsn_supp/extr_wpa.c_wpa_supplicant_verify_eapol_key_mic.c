
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int kck; } ;
typedef TYPE_1__ u8 ;
typedef int u16 ;
struct TYPE_11__ {int kck; } ;
struct wpa_sm {int ptk_set; int rx_replay_counter_set; TYPE_1__* request_counter; TYPE_1__* rx_replay_counter; TYPE_1__ ptk; TYPE_4__ tptk; scalar_t__ tptk_set; } ;
struct wpa_eapol_key {TYPE_4__* replay_counter; TYPE_4__* key_mic; } ;


 int MSG_DEBUG ;
 int WPA_REPLAY_COUNTER_LEN ;
 scalar_t__ memcmp (TYPE_1__*,TYPE_4__*,int) ;
 int memcpy (TYPE_1__*,TYPE_4__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int wpa_eapol_key_mic (int ,int ,TYPE_1__ const*,size_t,TYPE_4__*) ;
 int wpa_printf (int ,char*) ;

int wpa_supplicant_verify_eapol_key_mic(struct wpa_sm *sm,
                           struct wpa_eapol_key *key,
                           u16 ver,
                           const u8 *buf, size_t len)
{
    u8 mic[16];
    int ok = 0;

    memcpy(mic, key->key_mic, 16);
    if (sm->tptk_set) {
        memset(key->key_mic, 0, 16);
        wpa_eapol_key_mic(sm->tptk.kck, ver, buf, len,
                  key->key_mic);
        if (memcmp(mic, key->key_mic, 16) != 0) {




        } else {
            ok = 1;
            sm->tptk_set = 0;
            sm->ptk_set = 1;
            memcpy(&sm->ptk, &sm->tptk, sizeof(sm->ptk));
        }
    }

    if (!ok && sm->ptk_set) {
        memset(key->key_mic, 0, 16);
        wpa_eapol_key_mic(sm->ptk.kck, ver, buf, len,
                  key->key_mic);
        if (memcmp(mic, key->key_mic, 16) != 0) {




            return -1;
        }
        ok = 1;
    }

    if (!ok) {




        return -1;
    }

    memcpy(sm->rx_replay_counter, key->replay_counter,
          WPA_REPLAY_COUNTER_LEN);
    sm->rx_replay_counter_set = 1;

    memcpy(sm->request_counter, key->replay_counter,
          WPA_REPLAY_COUNTER_LEN);
    return 0;
}
