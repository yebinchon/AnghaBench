
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash_iterator {int dummy; } ;
struct curl_hash_element {int key_len; int key; struct connectbundle* ptr; } ;
struct connectbundle {int dummy; } ;
struct conncache {int hash; } ;


 int Curl_hash_delete (int *,int ,int ) ;
 struct curl_hash_element* Curl_hash_next_element (struct curl_hash_iterator*) ;
 int Curl_hash_start_iterate (int *,struct curl_hash_iterator*) ;

__attribute__((used)) static void conncache_remove_bundle(struct conncache *connc,
                                    struct connectbundle *bundle)
{
  struct curl_hash_iterator iter;
  struct curl_hash_element *he;

  if(!connc)
    return;

  Curl_hash_start_iterate(&connc->hash, &iter);

  he = Curl_hash_next_element(&iter);
  while(he) {
    if(he->ptr == bundle) {


      Curl_hash_delete(&connc->hash, he->key, he->key_len);
      return;
    }

    he = Curl_hash_next_element(&iter);
  }
}
