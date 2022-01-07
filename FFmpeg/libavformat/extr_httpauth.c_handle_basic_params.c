
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* realm; } ;
typedef TYPE_1__ HTTPAuthState ;


 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void handle_basic_params(HTTPAuthState *state, const char *key,
                                int key_len, char **dest, int *dest_len)
{
    if (!strncmp(key, "realm=", key_len)) {
        *dest = state->realm;
        *dest_len = sizeof(state->realm);
    }
}
