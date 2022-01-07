
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ff_parse_key_val_cb ;
struct TYPE_6__ {char const* stale; int qop; } ;
struct TYPE_5__ {scalar_t__ auth_type; int stale; TYPE_2__ digest_params; scalar_t__* realm; } ;
typedef TYPE_1__ HTTPAuthState ;
typedef int DigestParams ;


 scalar_t__ HTTP_AUTH_BASIC ;
 scalar_t__ HTTP_AUTH_DIGEST ;
 int av_strcasecmp (char const*,char*) ;
 scalar_t__ av_stristart (char const*,char*,char const**) ;
 int choose_qop (int ,int) ;
 int ff_parse_key_value (char const*,int ,TYPE_1__*) ;
 scalar_t__ handle_basic_params ;
 scalar_t__ handle_digest_params ;
 scalar_t__ handle_digest_update ;
 int memset (TYPE_2__*,int ,int) ;

void ff_http_auth_handle_header(HTTPAuthState *state, const char *key,
                                const char *value)
{
    if (!av_strcasecmp(key, "WWW-Authenticate") || !av_strcasecmp(key, "Proxy-Authenticate")) {
        const char *p;
        if (av_stristart(value, "Basic ", &p) &&
            state->auth_type <= HTTP_AUTH_BASIC) {
            state->auth_type = HTTP_AUTH_BASIC;
            state->realm[0] = 0;
            state->stale = 0;
            ff_parse_key_value(p, (ff_parse_key_val_cb) handle_basic_params,
                               state);
        } else if (av_stristart(value, "Digest ", &p) &&
                   state->auth_type <= HTTP_AUTH_DIGEST) {
            state->auth_type = HTTP_AUTH_DIGEST;
            memset(&state->digest_params, 0, sizeof(DigestParams));
            state->realm[0] = 0;
            state->stale = 0;
            ff_parse_key_value(p, (ff_parse_key_val_cb) handle_digest_params,
                               state);
            choose_qop(state->digest_params.qop,
                       sizeof(state->digest_params.qop));
            if (!av_strcasecmp(state->digest_params.stale, "true"))
                state->stale = 1;
        }
    } else if (!av_strcasecmp(key, "Authentication-Info")) {
        ff_parse_key_value(value, (ff_parse_key_val_cb) handle_digest_update,
                           state);
    }
}
