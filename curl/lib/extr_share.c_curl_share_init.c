
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_share {int specifier; int hostcache; } ;


 int CURL_LOCK_DATA_SHARE ;
 scalar_t__ Curl_mk_dnscache (int *) ;
 struct Curl_share* calloc (int,int) ;
 int free (struct Curl_share*) ;

struct Curl_share *
curl_share_init(void)
{
  struct Curl_share *share = calloc(1, sizeof(struct Curl_share));
  if(share) {
    share->specifier |= (1<<CURL_LOCK_DATA_SHARE);

    if(Curl_mk_dnscache(&share->hostcache)) {
      free(share);
      return ((void*)0);
    }
  }

  return share;
}
