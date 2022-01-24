#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  kck; } ;
typedef  TYPE_1__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_11__ {int /*<<< orphan*/  kck; } ;
struct wpa_sm {int ptk_set; int rx_replay_counter_set; TYPE_1__* request_counter; TYPE_1__* rx_replay_counter; TYPE_1__ ptk; TYPE_4__ tptk; scalar_t__ tptk_set; } ;
struct wpa_eapol_key {TYPE_4__* replay_counter; TYPE_4__* key_mic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_REPLAY_COUNTER_LEN ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int   FUNC5(struct wpa_sm *sm,
                           struct wpa_eapol_key *key,
                           u16 ver,
                           const u8 *buf, size_t len)
{
    u8 mic[16];
    int ok = 0;

    FUNC1(mic, key->key_mic, 16);
    if (sm->tptk_set) {
        FUNC2(key->key_mic, 0, 16);
        FUNC3(sm->tptk.kck, ver, buf, len,
                  key->key_mic);
        if (FUNC0(mic, key->key_mic, 16) != 0) {
           #ifdef DEBUG_PRINT        
            wpa_printf(MSG_DEBUG, "WPA: Invalid EAPOL-Key MIC "
                   "when using TPTK - ignoring TPTK");
           #endif
        } else {
            ok = 1;
            sm->tptk_set = 0;
            sm->ptk_set = 1;
            FUNC1(&sm->ptk, &sm->tptk, sizeof(sm->ptk));
        }
    }

    if (!ok && sm->ptk_set) {
        FUNC2(key->key_mic, 0, 16);
        FUNC3(sm->ptk.kck, ver, buf, len,
                  key->key_mic);
        if (FUNC0(mic, key->key_mic, 16) != 0) {
            #ifdef DEBUG_PRINT    
            wpa_printf(MSG_DEBUG, "WPA: Invalid EAPOL-Key MIC "
                   "- dropping packet");
             #endif    
            return -1;
        }
        ok = 1;
    }

    if (!ok) {
        #ifdef DEBUG_PRINT    
        wpa_printf(MSG_DEBUG, "WPA: Could not verify EAPOL-Key MIC "
               "- dropping packet");
         #endif    
        return -1;
    }

    FUNC1(sm->rx_replay_counter, key->replay_counter,
          WPA_REPLAY_COUNTER_LEN);
    sm->rx_replay_counter_set = 1;
    /*update request_counter for mic failure report*/
    FUNC1(sm->request_counter, key->replay_counter,
          WPA_REPLAY_COUNTER_LEN);    
    return 0;
}