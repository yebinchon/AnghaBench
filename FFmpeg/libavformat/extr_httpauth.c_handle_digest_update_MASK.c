#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* nonce; } ;
struct TYPE_4__ {TYPE_2__ digest_params; } ;
typedef  TYPE_1__ HTTPAuthState ;
typedef  TYPE_2__ DigestParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC1(HTTPAuthState *state, const char *key,
                                 int key_len, char **dest, int *dest_len)
{
    DigestParams *digest = &state->digest_params;

    if (!FUNC0(key, "nextnonce=", key_len)) {
        *dest     =        digest->nonce;
        *dest_len = sizeof(digest->nonce);
    }
}