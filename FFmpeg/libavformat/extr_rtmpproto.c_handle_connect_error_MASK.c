#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  authmod ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {char* username; int auth_tried; char* auth_params; int /*<<< orphan*/ * password; } ;
typedef  TYPE_2__ RTMPContext ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (TYPE_2__*,char const*,char const*,char const*,char const*) ; 
 int FUNC3 (TYPE_2__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(URLContext *s, const char *desc)
{
    RTMPContext *rt = s->priv_data;
    char buf[300], *ptr, authmod[15];
    int i = 0, ret = 0;
    const char *user = "", *salt = "", *opaque = NULL,
               *challenge = NULL, *cptr = NULL, *nonce = NULL;

    if (!(cptr = FUNC8(desc, "authmod=adobe")) &&
        !(cptr = FUNC8(desc, "authmod=llnw"))) {
        FUNC0(s, AV_LOG_ERROR,
               "Unknown connect error (unsupported authentication method?)\n");
        return AVERROR_UNKNOWN;
    }
    cptr += FUNC7("authmod=");
    while (*cptr && *cptr != ' ' && i < sizeof(authmod) - 1)
        authmod[i++] = *cptr++;
    authmod[i] = '\0';

    if (!rt->username[0] || !rt->password[0]) {
        FUNC0(s, AV_LOG_ERROR, "No credentials set\n");
        return AVERROR_UNKNOWN;
    }

    if (FUNC8(desc, "?reason=authfailed")) {
        FUNC0(s, AV_LOG_ERROR, "Incorrect username/password\n");
        return AVERROR_UNKNOWN;
    } else if (FUNC8(desc, "?reason=nosuchuser")) {
        FUNC0(s, AV_LOG_ERROR, "Incorrect username\n");
        return AVERROR_UNKNOWN;
    }

    if (rt->auth_tried) {
        FUNC0(s, AV_LOG_ERROR, "Authentication failed\n");
        return AVERROR_UNKNOWN;
    }

    rt->auth_params[0] = '\0';

    if (FUNC8(desc, "code=403 need auth")) {
        FUNC4(rt->auth_params, sizeof(rt->auth_params),
                 "?authmod=%s&user=%s", authmod, rt->username);
        return 0;
    }

    if (!(cptr = FUNC8(desc, "?reason=needauth"))) {
        FUNC0(s, AV_LOG_ERROR, "No auth parameters found\n");
        return AVERROR_UNKNOWN;
    }

    FUNC1(buf, cptr + 1, sizeof(buf));
    ptr = buf;

    while (ptr) {
        char *next  = FUNC5(ptr, '&');
        char *value = FUNC5(ptr, '=');
        if (next)
            *next++ = '\0';
        if (value) {
            *value++ = '\0';
            if (!FUNC6(ptr, "user")) {
                user = value;
            } else if (!FUNC6(ptr, "salt")) {
                salt = value;
            } else if (!FUNC6(ptr, "opaque")) {
                opaque = value;
            } else if (!FUNC6(ptr, "challenge")) {
                challenge = value;
            } else if (!FUNC6(ptr, "nonce")) {
                nonce = value;
            } else {
                FUNC0(s, AV_LOG_INFO, "Ignoring unsupported var %s\n", ptr);
            }
        } else {
            FUNC0(s, AV_LOG_WARNING, "Variable %s has NULL value\n", ptr);
        }
        ptr = next;
    }

    if (!FUNC6(authmod, "adobe")) {
        if ((ret = FUNC2(rt, user, salt, opaque, challenge)) < 0)
            return ret;
    } else {
        if ((ret = FUNC3(rt, user, nonce)) < 0)
            return ret;
    }

    rt->auth_tried = 1;
    return 0;
}