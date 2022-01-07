
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash_element {size_t key_len; void* ptr; int key; } ;


 struct curl_hash_element* malloc (int) ;
 int memcpy (int ,void const*,size_t) ;

__attribute__((used)) static struct curl_hash_element *
mk_hash_element(const void *key, size_t key_len, const void *p)
{

  struct curl_hash_element *he = malloc(sizeof(struct curl_hash_element) +
                                        key_len);
  if(he) {

    memcpy(he->key, key, key_len);
    he->key_len = key_len;
    he->ptr = (void *) p;
  }
  return he;
}
