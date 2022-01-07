
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_key_replay_counter {scalar_t__ valid; int counter; } ;


 scalar_t__ FALSE ;
 int RSNA_MAX_EAPOL_RETRIES ;
 int WPA_REPLAY_COUNTER_LEN ;
 scalar_t__ memcmp (int const*,int ,int ) ;

__attribute__((used)) static void wpa_replay_counter_mark_invalid(struct wpa_key_replay_counter *ctr,
                        const u8 *replay_counter)
{
    int i;
    for (i = 0; i < RSNA_MAX_EAPOL_RETRIES; i++) {
        if (ctr[i].valid &&
            (replay_counter == ((void*)0) ||
             memcmp(replay_counter, ctr[i].counter,
                   WPA_REPLAY_COUNTER_LEN) == 0))
            ctr[i].valid = FALSE;
    }
}
