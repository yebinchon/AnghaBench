#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_key_replay_counter {scalar_t__ valid; int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int RSNA_MAX_EAPOL_RETRIES ; 
 int /*<<< orphan*/  WPA_REPLAY_COUNTER_LEN ; 
 scalar_t__ memcmp (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void wpa_replay_counter_mark_invalid(struct wpa_key_replay_counter *ctr,
                        const u8 *replay_counter)
{
    int i;
    for (i = 0; i < RSNA_MAX_EAPOL_RETRIES; i++) {
        if (ctr[i].valid &&
            (replay_counter == NULL ||
             memcmp(replay_counter, ctr[i].counter,
                   WPA_REPLAY_COUNTER_LEN) == 0))
            ctr[i].valid = FALSE;
    }
}