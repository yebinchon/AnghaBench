
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ auth_type; scalar_t__ stale; } ;
typedef TYPE_1__ HTTPAuthState ;


 int AV_BASE64_SIZE (int ) ;
 scalar_t__ HTTP_AUTH_BASIC ;
 scalar_t__ HTTP_AUTH_DIGEST ;
 int av_base64_encode (char*,int,char*,int ) ;
 int av_free (char*) ;
 char* av_malloc (int) ;
 int av_strlcat (char*,char*,int) ;
 char* ff_urldecode (char const*) ;
 char* make_digest_auth (TYPE_1__*,char*,char*,char const*,char const*) ;
 int snprintf (char*,int,char*) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;

char *ff_http_auth_create_response(HTTPAuthState *state, const char *auth,
                                   const char *path, const char *method)
{
    char *authstr = ((void*)0);



    state->stale = 0;
    if (!auth || !strchr(auth, ':'))
        return ((void*)0);

    if (state->auth_type == HTTP_AUTH_BASIC) {
        int auth_b64_len, len;
        char *ptr, *decoded_auth = ff_urldecode(auth);

        if (!decoded_auth)
            return ((void*)0);

        auth_b64_len = AV_BASE64_SIZE(strlen(decoded_auth));
        len = auth_b64_len + 30;

        authstr = av_malloc(len);
        if (!authstr) {
            av_free(decoded_auth);
            return ((void*)0);
        }

        snprintf(authstr, len, "Authorization: Basic ");
        ptr = authstr + strlen(authstr);
        av_base64_encode(ptr, auth_b64_len, decoded_auth, strlen(decoded_auth));
        av_strlcat(ptr, "\r\n", len - (ptr - authstr));
        av_free(decoded_auth);
    } else if (state->auth_type == HTTP_AUTH_DIGEST) {
        char *username = ff_urldecode(auth), *password;

        if (!username)
            return ((void*)0);

        if ((password = strchr(username, ':'))) {
            *password++ = 0;
            authstr = make_digest_auth(state, username, password, path, method);
        }
        av_free(username);
    }
    return authstr;
}
