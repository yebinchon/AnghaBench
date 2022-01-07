
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int data; } ;
struct connectbundle {int dummy; } ;
struct conncache {int hash; } ;
typedef int key ;


 int CONN_LOCK (int ) ;
 struct connectbundle* Curl_hash_pick (int *,char*,int ) ;
 int HASHKEY_SIZE ;
 int hashkey (struct connectdata*,char*,int,char const**) ;
 int strlen (char*) ;

struct connectbundle *Curl_conncache_find_bundle(struct connectdata *conn,
                                                 struct conncache *connc,
                                                 const char **hostp)
{
  struct connectbundle *bundle = ((void*)0);
  CONN_LOCK(conn->data);
  if(connc) {
    char key[HASHKEY_SIZE];
    hashkey(conn, key, sizeof(key), hostp);
    bundle = Curl_hash_pick(&connc->hash, key, strlen(key));
  }

  return bundle;
}
