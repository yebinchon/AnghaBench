
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conncache {TYPE_2__* closure_handle; int hash; } ;
struct TYPE_4__ {struct conncache* conn_cache; } ;
struct TYPE_5__ {TYPE_1__ state; } ;


 int Curl_close (TYPE_2__**) ;
 int Curl_hash_init (int *,int,int ,int ,int ) ;
 int Curl_hash_str ;
 int Curl_str_key_compare ;
 TYPE_2__* curl_easy_init () ;
 int free_bundle_hash_entry ;

int Curl_conncache_init(struct conncache *connc, int size)
{
  int rc;


  connc->closure_handle = curl_easy_init();
  if(!connc->closure_handle)
    return 1;

  rc = Curl_hash_init(&connc->hash, size, Curl_hash_str,
                      Curl_str_key_compare, free_bundle_hash_entry);
  if(rc)
    Curl_close(&connc->closure_handle);
  else
    connc->closure_handle->state.conn_cache = connc;

  return rc;
}
