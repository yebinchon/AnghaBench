#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ff_parse_key_val_cb ;
struct TYPE_6__ {char const* stale; int /*<<< orphan*/  qop; } ;
struct TYPE_5__ {scalar_t__ auth_type; int stale; TYPE_2__ digest_params; scalar_t__* realm; } ;
typedef  TYPE_1__ HTTPAuthState ;
typedef  int /*<<< orphan*/  DigestParams ;

/* Variables and functions */
 scalar_t__ HTTP_AUTH_BASIC ; 
 scalar_t__ HTTP_AUTH_DIGEST ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ handle_basic_params ; 
 scalar_t__ handle_digest_params ; 
 scalar_t__ handle_digest_update ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(HTTPAuthState *state, const char *key,
                                const char *value)
{
    if (!FUNC0(key, "WWW-Authenticate") || !FUNC0(key, "Proxy-Authenticate")) {
        const char *p;
        if (FUNC1(value, "Basic ", &p) &&
            state->auth_type <= HTTP_AUTH_BASIC) {
            state->auth_type = HTTP_AUTH_BASIC;
            state->realm[0] = 0;
            state->stale = 0;
            FUNC3(p, (ff_parse_key_val_cb) handle_basic_params,
                               state);
        } else if (FUNC1(value, "Digest ", &p) &&
                   state->auth_type <= HTTP_AUTH_DIGEST) {
            state->auth_type = HTTP_AUTH_DIGEST;
            FUNC4(&state->digest_params, 0, sizeof(DigestParams));
            state->realm[0] = 0;
            state->stale = 0;
            FUNC3(p, (ff_parse_key_val_cb) handle_digest_params,
                               state);
            FUNC2(state->digest_params.qop,
                       sizeof(state->digest_params.qop));
            if (!FUNC0(state->digest_params.stale, "true"))
                state->stale = 1;
        }
    } else if (!FUNC0(key, "Authentication-Info")) {
        FUNC3(value, (ff_parse_key_val_cb) handle_digest_update,
                           state);
    }
}