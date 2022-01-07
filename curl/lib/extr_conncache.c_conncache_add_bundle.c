
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectbundle {int dummy; } ;
struct conncache {int hash; } ;


 void* Curl_hash_add (int *,char*,int ,struct connectbundle*) ;
 int FALSE ;
 int TRUE ;
 int strlen (char*) ;

__attribute__((used)) static bool conncache_add_bundle(struct conncache *connc,
                                 char *key,
                                 struct connectbundle *bundle)
{
  void *p = Curl_hash_add(&connc->hash, key, strlen(key), bundle);

  return p?TRUE:FALSE;
}
