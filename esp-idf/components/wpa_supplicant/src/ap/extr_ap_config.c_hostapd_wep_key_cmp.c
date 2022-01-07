
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_wep_keys {scalar_t__ idx; scalar_t__ default_len; scalar_t__* len; int * key; } ;


 int NUM_WEP_KEYS ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int hostapd_wep_key_cmp(struct hostapd_wep_keys *a, struct hostapd_wep_keys *b)
{
    int i;

    if (a->idx != b->idx || a->default_len != b->default_len)
        return 1;
    for (i = 0; i < NUM_WEP_KEYS; i++)
        if (a->len[i] != b->len[i] ||
         memcmp(a->key[i], b->key[i], a->len[i]) != 0)
            return 1;
    return 0;
}
