#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ auth_type; scalar_t__ stale; } ;
typedef  TYPE_1__ HTTPAuthState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HTTP_AUTH_BASIC ; 
 scalar_t__ HTTP_AUTH_DIGEST ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (TYPE_1__*,char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

char *FUNC10(HTTPAuthState *state, const char *auth,
                                   const char *path, const char *method)
{
    char *authstr = NULL;

    /* Clear the stale flag, we assume the auth is ok now. It is reset
     * by the server headers if there's a new issue. */
    state->stale = 0;
    if (!auth || !FUNC8(auth, ':'))
        return NULL;

    if (state->auth_type == HTTP_AUTH_BASIC) {
        int auth_b64_len, len;
        char *ptr, *decoded_auth = FUNC5(auth);

        if (!decoded_auth)
            return NULL;

        auth_b64_len = FUNC0(FUNC9(decoded_auth));
        len = auth_b64_len + 30;

        authstr = FUNC3(len);
        if (!authstr) {
            FUNC2(decoded_auth);
            return NULL;
        }

        FUNC7(authstr, len, "Authorization: Basic ");
        ptr = authstr + FUNC9(authstr);
        FUNC1(ptr, auth_b64_len, decoded_auth, FUNC9(decoded_auth));
        FUNC4(ptr, "\r\n", len - (ptr - authstr));
        FUNC2(decoded_auth);
    } else if (state->auth_type == HTTP_AUTH_DIGEST) {
        char *username = FUNC5(auth), *password;

        if (!username)
            return NULL;

        if ((password = FUNC8(username, ':'))) {
            *password++ = 0;
            authstr = FUNC6(state, username, password, path, method);
        }
        FUNC2(username);
    }
    return authstr;
}