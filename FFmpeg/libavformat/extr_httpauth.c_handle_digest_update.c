
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* nonce; } ;
struct TYPE_4__ {TYPE_2__ digest_params; } ;
typedef TYPE_1__ HTTPAuthState ;
typedef TYPE_2__ DigestParams ;


 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void handle_digest_update(HTTPAuthState *state, const char *key,
                                 int key_len, char **dest, int *dest_len)
{
    DigestParams *digest = &state->digest_params;

    if (!strncmp(key, "nextnonce=", key_len)) {
        *dest = digest->nonce;
        *dest_len = sizeof(digest->nonce);
    }
}
