
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digestdata {char* nonce; int nc; char* realm; char* opaque; char* qop; char* algorithm; void* stale; void* userhash; int algo; } ;
typedef int CURLcode ;


 int CURLDIGESTALGO_MD5 ;
 int CURLDIGESTALGO_MD5SESS ;
 int CURLDIGESTALGO_SHA256 ;
 int CURLDIGESTALGO_SHA256SESS ;
 int CURLDIGESTALGO_SHA512_256 ;
 int CURLDIGESTALGO_SHA512_256SESS ;
 int CURLE_BAD_CONTENT_ENCODING ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_auth_digest_cleanup (struct digestdata*) ;
 scalar_t__ Curl_auth_digest_get_pair (char const*,char*,char*,char const**) ;
 int DIGEST_MAX_CONTENT_LENGTH ;
 int DIGEST_MAX_VALUE_LENGTH ;
 char* DIGEST_QOP_VALUE_STRING_AUTH ;
 char* DIGEST_QOP_VALUE_STRING_AUTH_INT ;
 int FALSE ;
 scalar_t__ ISSPACE (char const) ;
 void* TRUE ;
 int free (char*) ;
 scalar_t__ strcasecompare (char*,char*) ;
 void* strdup (char*) ;
 char* strtok_r (char*,char*,char**) ;

CURLcode Curl_auth_decode_digest_http_message(const char *chlg,
                                              struct digestdata *digest)
{
  bool before = FALSE;
  bool foundAuth = FALSE;
  bool foundAuthInt = FALSE;
  char *token = ((void*)0);
  char *tmp = ((void*)0);


  if(digest->nonce)
    before = TRUE;


  Curl_auth_digest_cleanup(digest);

  for(;;) {
    char value[DIGEST_MAX_VALUE_LENGTH];
    char content[DIGEST_MAX_CONTENT_LENGTH];


    while(*chlg && ISSPACE(*chlg))
      chlg++;


    if(Curl_auth_digest_get_pair(chlg, value, content, &chlg)) {
      if(strcasecompare(value, "nonce")) {
        free(digest->nonce);
        digest->nonce = strdup(content);
        if(!digest->nonce)
          return CURLE_OUT_OF_MEMORY;
      }
      else if(strcasecompare(value, "stale")) {
        if(strcasecompare(content, "true")) {
          digest->stale = TRUE;
          digest->nc = 1;
        }
      }
      else if(strcasecompare(value, "realm")) {
        free(digest->realm);
        digest->realm = strdup(content);
        if(!digest->realm)
          return CURLE_OUT_OF_MEMORY;
      }
      else if(strcasecompare(value, "opaque")) {
        free(digest->opaque);
        digest->opaque = strdup(content);
        if(!digest->opaque)
          return CURLE_OUT_OF_MEMORY;
      }
      else if(strcasecompare(value, "qop")) {
        char *tok_buf = ((void*)0);


        tmp = strdup(content);
        if(!tmp)
          return CURLE_OUT_OF_MEMORY;

        token = strtok_r(tmp, ",", &tok_buf);
        while(token != ((void*)0)) {
          if(strcasecompare(token, DIGEST_QOP_VALUE_STRING_AUTH)) {
            foundAuth = TRUE;
          }
          else if(strcasecompare(token, DIGEST_QOP_VALUE_STRING_AUTH_INT)) {
            foundAuthInt = TRUE;
          }
          token = strtok_r(((void*)0), ",", &tok_buf);
        }

        free(tmp);


        if(foundAuth) {
          free(digest->qop);
          digest->qop = strdup(DIGEST_QOP_VALUE_STRING_AUTH);
          if(!digest->qop)
            return CURLE_OUT_OF_MEMORY;
        }
        else if(foundAuthInt) {
          free(digest->qop);
          digest->qop = strdup(DIGEST_QOP_VALUE_STRING_AUTH_INT);
          if(!digest->qop)
            return CURLE_OUT_OF_MEMORY;
        }
      }
      else if(strcasecompare(value, "algorithm")) {
        free(digest->algorithm);
        digest->algorithm = strdup(content);
        if(!digest->algorithm)
          return CURLE_OUT_OF_MEMORY;

        if(strcasecompare(content, "MD5-sess"))
          digest->algo = CURLDIGESTALGO_MD5SESS;
        else if(strcasecompare(content, "MD5"))
          digest->algo = CURLDIGESTALGO_MD5;
        else if(strcasecompare(content, "SHA-256"))
          digest->algo = CURLDIGESTALGO_SHA256;
        else if(strcasecompare(content, "SHA-256-SESS"))
          digest->algo = CURLDIGESTALGO_SHA256SESS;
        else if(strcasecompare(content, "SHA-512-256"))
          digest->algo = CURLDIGESTALGO_SHA512_256;
        else if(strcasecompare(content, "SHA-512-256-SESS"))
          digest->algo = CURLDIGESTALGO_SHA512_256SESS;
        else
          return CURLE_BAD_CONTENT_ENCODING;
      }
      else if(strcasecompare(value, "userhash")) {
        if(strcasecompare(content, "true")) {
          digest->userhash = TRUE;
        }
      }
      else {

      }
    }
    else
      break;


    while(*chlg && ISSPACE(*chlg))
      chlg++;


    if(',' == *chlg)
      chlg++;
  }




  if(before && !digest->stale)
    return CURLE_BAD_CONTENT_ENCODING;


  if(!digest->nonce)
    return CURLE_BAD_CONTENT_ENCODING;

  return CURLE_OK;
}
