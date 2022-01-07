
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_share {size_t max_ssl_sessions; int clientdata; int (* unlockfunc ) (int *,int ,int ) ;int psl; struct Curl_share* sslsession; int cookies; int hostcache; int conn_cache; scalar_t__ dirty; int (* lockfunc ) (int *,int ,int ,int ) ;} ;
typedef int CURLSHcode ;


 int CURLSHE_INVALID ;
 int CURLSHE_IN_USE ;
 int CURLSHE_OK ;
 int CURL_LOCK_ACCESS_SINGLE ;
 int CURL_LOCK_DATA_SHARE ;
 int Curl_conncache_close_all_connections (int *) ;
 int Curl_conncache_destroy (int *) ;
 int Curl_cookie_cleanup (int ) ;
 int Curl_hash_destroy (int *) ;
 int Curl_psl_destroy (int *) ;
 int Curl_ssl_kill_session (struct Curl_share*) ;
 int free (struct Curl_share*) ;
 int stub1 (int *,int ,int ,int ) ;
 int stub2 (int *,int ,int ) ;
 int stub3 (int *,int ,int ) ;

CURLSHcode
curl_share_cleanup(struct Curl_share *share)
{
  if(share == ((void*)0))
    return CURLSHE_INVALID;

  if(share->lockfunc)
    share->lockfunc(((void*)0), CURL_LOCK_DATA_SHARE, CURL_LOCK_ACCESS_SINGLE,
                    share->clientdata);

  if(share->dirty) {
    if(share->unlockfunc)
      share->unlockfunc(((void*)0), CURL_LOCK_DATA_SHARE, share->clientdata);
    return CURLSHE_IN_USE;
  }

  Curl_conncache_close_all_connections(&share->conn_cache);
  Curl_conncache_destroy(&share->conn_cache);
  Curl_hash_destroy(&share->hostcache);


  Curl_cookie_cleanup(share->cookies);
  Curl_psl_destroy(&share->psl);

  if(share->unlockfunc)
    share->unlockfunc(((void*)0), CURL_LOCK_DATA_SHARE, share->clientdata);
  free(share);

  return CURLSHE_OK;
}
