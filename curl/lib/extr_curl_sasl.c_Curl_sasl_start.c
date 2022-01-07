
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ user_passwd; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_10__ {TYPE_1__ host; } ;
struct connectdata {long port; long remote_port; int user; int * passwd; int sasl_authzid; int oauth_bearer; int ntlm; int krb5; TYPE_5__ bits; TYPE_3__ host; TYPE_2__ http_proxy; struct Curl_easy* data; } ;
struct SASL {int force_ir; unsigned int authused; unsigned int authmechs; unsigned int prefmech; TYPE_4__* params; int mutual_auth; } ;
struct TYPE_16__ {char** str; scalar_t__ sasl_ir; } ;
struct Curl_easy {TYPE_8__ set; TYPE_7__* conn; } ;
typedef int saslstate ;
typedef int saslprogress ;
struct TYPE_14__ {int name; } ;
struct TYPE_15__ {TYPE_6__ host; } ;
struct TYPE_12__ {char* service; scalar_t__ maxirlen; scalar_t__ (* sendauth ) (struct connectdata*,char const*,char*) ;} ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_auth_create_external_message (struct Curl_easy*,int ,char**,size_t*) ;
 scalar_t__ Curl_auth_create_gssapi_user_message (struct Curl_easy*,int ,int *,char const*,int ,int ,int *,int *,char**,size_t*) ;
 scalar_t__ Curl_auth_create_login_message (struct Curl_easy*,int ,char**,size_t*) ;
 scalar_t__ Curl_auth_create_ntlm_type1_message (struct Curl_easy*,int ,int *,char const*,char const* const,int *,char**,size_t*) ;
 scalar_t__ Curl_auth_create_oauth_bearer_message (struct Curl_easy*,int ,char const* const,long const,int ,char**,size_t*) ;
 scalar_t__ Curl_auth_create_plain_message (struct Curl_easy*,int ,int ,int *,char**,size_t*) ;
 scalar_t__ Curl_auth_create_xoauth_bearer_message (struct Curl_easy*,int ,int ,char**,size_t*) ;
 scalar_t__ Curl_auth_is_digest_supported () ;
 scalar_t__ Curl_auth_is_gssapi_supported () ;
 scalar_t__ Curl_auth_is_ntlm_supported () ;
 scalar_t__ Curl_auth_user_contains_domain (int ) ;
 int FALSE ;
 int SASL_CRAMMD5 ;
 int SASL_DIGESTMD5 ;
 int SASL_EXTERNAL ;
 int SASL_FINAL ;
 int SASL_GSSAPI ;
 int SASL_GSSAPI_TOKEN ;
 int SASL_IDLE ;
 int SASL_INPROGRESS ;
 int SASL_LOGIN ;
 int SASL_LOGIN_PASSWD ;
 unsigned int SASL_MECH_CRAM_MD5 ;
 unsigned int SASL_MECH_DIGEST_MD5 ;
 unsigned int SASL_MECH_EXTERNAL ;
 unsigned int SASL_MECH_GSSAPI ;
 unsigned int SASL_MECH_LOGIN ;
 unsigned int SASL_MECH_NTLM ;
 unsigned int SASL_MECH_OAUTHBEARER ;
 unsigned int SASL_MECH_PLAIN ;
 char* SASL_MECH_STRING_CRAM_MD5 ;
 char* SASL_MECH_STRING_DIGEST_MD5 ;
 char* SASL_MECH_STRING_EXTERNAL ;
 char* SASL_MECH_STRING_GSSAPI ;
 char* SASL_MECH_STRING_LOGIN ;
 char* SASL_MECH_STRING_NTLM ;
 char* SASL_MECH_STRING_OAUTHBEARER ;
 char* SASL_MECH_STRING_PLAIN ;
 char* SASL_MECH_STRING_XOAUTH2 ;
 unsigned int SASL_MECH_XOAUTH2 ;
 int SASL_NTLM ;
 int SASL_NTLM_TYPE2MSG ;
 int SASL_OAUTH2 ;
 int SASL_OAUTH2_RESP ;
 int SASL_PLAIN ;
 int SASL_STOP ;
 scalar_t__ SSL_IS_PROXY () ;
 size_t STRING_SERVICE_NAME ;
 int free (char*) ;
 int state (struct SASL*,struct connectdata*,int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ stub1 (struct connectdata*,char const*,char*) ;

CURLcode Curl_sasl_start(struct SASL *sasl, struct connectdata *conn,
                         bool force_ir, saslprogress *progress)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  unsigned int enabledmechs;
  const char *mech = ((void*)0);
  char *resp = ((void*)0);
  size_t len = 0;
  saslstate state1 = SASL_STOP;
  saslstate state2 = SASL_FINAL;
  const char * const hostname = SSL_IS_PROXY() ? conn->http_proxy.host.name :
    conn->host.name;
  const long int port = SSL_IS_PROXY() ? conn->port : conn->remote_port;






  sasl->force_ir = force_ir;
  sasl->authused = 0;
  enabledmechs = sasl->authmechs & sasl->prefmech;
  *progress = SASL_IDLE;



  if((enabledmechs & SASL_MECH_EXTERNAL) && !conn->passwd[0]) {
    mech = SASL_MECH_STRING_EXTERNAL;
    state1 = SASL_EXTERNAL;
    sasl->authused = SASL_MECH_EXTERNAL;

    if(force_ir || data->set.sasl_ir)
      result = Curl_auth_create_external_message(data, conn->user, &resp,
                                                 &len);
  }
  else if(conn->bits.user_passwd) {
    if((enabledmechs & SASL_MECH_DIGEST_MD5) &&
       Curl_auth_is_digest_supported()) {
      mech = SASL_MECH_STRING_DIGEST_MD5;
      state1 = SASL_DIGESTMD5;
      sasl->authused = SASL_MECH_DIGEST_MD5;
    }
    else if(enabledmechs & SASL_MECH_CRAM_MD5) {
      mech = SASL_MECH_STRING_CRAM_MD5;
      state1 = SASL_CRAMMD5;
      sasl->authused = SASL_MECH_CRAM_MD5;
    }
    else
    if((enabledmechs & SASL_MECH_OAUTHBEARER) && conn->oauth_bearer) {
      mech = SASL_MECH_STRING_OAUTHBEARER;
      state1 = SASL_OAUTH2;
      state2 = SASL_OAUTH2_RESP;
      sasl->authused = SASL_MECH_OAUTHBEARER;

      if(force_ir || data->set.sasl_ir)
        result = Curl_auth_create_oauth_bearer_message(data, conn->user,
                                                       hostname,
                                                       port,
                                                       conn->oauth_bearer,
                                                       &resp, &len);
    }
    else if((enabledmechs & SASL_MECH_XOAUTH2) && conn->oauth_bearer) {
      mech = SASL_MECH_STRING_XOAUTH2;
      state1 = SASL_OAUTH2;
      sasl->authused = SASL_MECH_XOAUTH2;

      if(force_ir || data->set.sasl_ir)
        result = Curl_auth_create_xoauth_bearer_message(data, conn->user,
                                                        conn->oauth_bearer,
                                                        &resp, &len);
    }
    else if(enabledmechs & SASL_MECH_PLAIN) {
      mech = SASL_MECH_STRING_PLAIN;
      state1 = SASL_PLAIN;
      sasl->authused = SASL_MECH_PLAIN;

      if(force_ir || data->set.sasl_ir)
        result = Curl_auth_create_plain_message(data, conn->sasl_authzid,
                                                conn->user, conn->passwd,
                                                &resp, &len);
    }
    else if(enabledmechs & SASL_MECH_LOGIN) {
      mech = SASL_MECH_STRING_LOGIN;
      state1 = SASL_LOGIN;
      state2 = SASL_LOGIN_PASSWD;
      sasl->authused = SASL_MECH_LOGIN;

      if(force_ir || data->set.sasl_ir)
        result = Curl_auth_create_login_message(data, conn->user, &resp, &len);
    }
  }

  if(!result && mech) {
    if(resp && sasl->params->maxirlen &&
       strlen(mech) + len > sasl->params->maxirlen) {
      free(resp);
      resp = ((void*)0);
    }

    result = sasl->params->sendauth(conn, mech, resp);
    if(!result) {
      *progress = SASL_INPROGRESS;
      state(sasl, conn, resp ? state2 : state1);
    }
  }

  free(resp);

  return result;
}
