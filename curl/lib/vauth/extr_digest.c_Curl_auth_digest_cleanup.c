
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digestdata {void* userhash; void* stale; int algo; scalar_t__ nc; int algorithm; int qop; int opaque; int realm; int cnonce; int nonce; } ;


 int CURLDIGESTALGO_MD5 ;
 int Curl_safefree (int ) ;
 void* FALSE ;

void Curl_auth_digest_cleanup(struct digestdata *digest)
{
  Curl_safefree(digest->nonce);
  Curl_safefree(digest->cnonce);
  Curl_safefree(digest->realm);
  Curl_safefree(digest->opaque);
  Curl_safefree(digest->qop);
  Curl_safefree(digest->algorithm);

  digest->nc = 0;
  digest->algo = CURLDIGESTALGO_MD5;
  digest->stale = FALSE;
  digest->userhash = FALSE;
}
