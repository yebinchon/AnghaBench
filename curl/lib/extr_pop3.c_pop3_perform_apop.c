
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pop3_conn {int pp; scalar_t__ apoptimestamp; } ;
struct TYPE_4__ {int user_passwd; } ;
struct TYPE_3__ {struct pop3_conn pop3c; } ;
struct connectdata {int user; scalar_t__ passwd; TYPE_2__ bits; TYPE_1__ proto; } ;
typedef int MD5_context ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_DIGEST_MD5 ;
 int Curl_MD5_final (int *,unsigned char*) ;
 int * Curl_MD5_init (int ) ;
 int Curl_MD5_update (int *,unsigned char const*,int ) ;
 int Curl_pp_sendf (int *,char*,int ,char*) ;
 int MD5_DIGEST_LEN ;
 int POP3_APOP ;
 int POP3_STOP ;
 int curlx_uztoui (int ) ;
 int msnprintf (char*,int,char*,unsigned char) ;
 int state (struct connectdata*,int ) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static CURLcode pop3_perform_apop(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  size_t i;
  MD5_context *ctxt;
  unsigned char digest[MD5_DIGEST_LEN];
  char secret[2 * MD5_DIGEST_LEN + 1];



  if(!conn->bits.user_passwd) {
    state(conn, POP3_STOP);

    return result;
  }


  ctxt = Curl_MD5_init(Curl_DIGEST_MD5);
  if(!ctxt)
    return CURLE_OUT_OF_MEMORY;

  Curl_MD5_update(ctxt, (const unsigned char *) pop3c->apoptimestamp,
                  curlx_uztoui(strlen(pop3c->apoptimestamp)));

  Curl_MD5_update(ctxt, (const unsigned char *) conn->passwd,
                  curlx_uztoui(strlen(conn->passwd)));


  Curl_MD5_final(ctxt, digest);


  for(i = 0; i < MD5_DIGEST_LEN; i++)
    msnprintf(&secret[2 * i], 3, "%02x", digest[i]);

  result = Curl_pp_sendf(&pop3c->pp, "APOP %s %s", conn->user, secret);

  if(!result)
    state(conn, POP3_APOP);

  return result;
}
