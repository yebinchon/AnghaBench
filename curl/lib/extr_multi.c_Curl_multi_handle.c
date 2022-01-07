
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_multi {int maxconnects; int pending; int msglist; int conn_cache; int hostcache; int sockhash; int multiplexing; int type; } ;


 int CURL_MULTI_HANDLE ;
 int Curl_conncache_destroy (int *) ;
 scalar_t__ Curl_conncache_init (int *,int) ;
 int Curl_hash_destroy (int *) ;
 int Curl_llist_destroy (int *,int *) ;
 int Curl_llist_init (int *,int *) ;
 scalar_t__ Curl_mk_dnscache (int *) ;
 int TRUE ;
 struct Curl_multi* calloc (int,int) ;
 int free (struct Curl_multi*) ;
 scalar_t__ sh_init (int *,int) ;

struct Curl_multi *Curl_multi_handle(int hashsize,
                                     int chashsize)
{
  struct Curl_multi *multi = calloc(1, sizeof(struct Curl_multi));

  if(!multi)
    return ((void*)0);

  multi->type = CURL_MULTI_HANDLE;

  if(Curl_mk_dnscache(&multi->hostcache))
    goto error;

  if(sh_init(&multi->sockhash, hashsize))
    goto error;

  if(Curl_conncache_init(&multi->conn_cache, chashsize))
    goto error;

  Curl_llist_init(&multi->msglist, ((void*)0));
  Curl_llist_init(&multi->pending, ((void*)0));

  multi->multiplexing = TRUE;


  multi->maxconnects = -1;
  return multi;

  error:

  Curl_hash_destroy(&multi->sockhash);
  Curl_hash_destroy(&multi->hostcache);
  Curl_conncache_destroy(&multi->conn_cache);
  Curl_llist_destroy(&multi->msglist, ((void*)0));
  Curl_llist_destroy(&multi->pending, ((void*)0));

  free(multi);
  return ((void*)0);
}
