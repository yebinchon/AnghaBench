
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variant_info {char* bandwidth; } ;


 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void handle_variant_args(struct variant_info *info, const char *key,
                                int key_len, char **dest, int *dest_len)
{
    if (!strncmp(key, "BANDWIDTH=", key_len)) {
        *dest = info->bandwidth;
        *dest_len = sizeof(info->bandwidth);
    }
}
