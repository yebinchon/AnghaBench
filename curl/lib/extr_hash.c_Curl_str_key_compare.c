
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (void*,void*,size_t) ;

size_t Curl_str_key_compare(void *k1, size_t key1_len,
                            void *k2, size_t key2_len)
{
  if((key1_len == key2_len) && !memcmp(k1, k2, key1_len))
    return 1;

  return 0;
}
