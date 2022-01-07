
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int DIGEST_QOP_VALUE_AUTH ;
 int DIGEST_QOP_VALUE_AUTH_CONF ;
 int DIGEST_QOP_VALUE_AUTH_INT ;
 int DIGEST_QOP_VALUE_STRING_AUTH ;
 int DIGEST_QOP_VALUE_STRING_AUTH_CONF ;
 int DIGEST_QOP_VALUE_STRING_AUTH_INT ;
 int free (char*) ;
 scalar_t__ strcasecompare (char*,int ) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static CURLcode auth_digest_get_qop_values(const char *options, int *value)
{
  char *tmp;
  char *token;
  char *tok_buf = ((void*)0);


  *value = 0;



  tmp = strdup(options);
  if(!tmp)
    return CURLE_OUT_OF_MEMORY;

  token = strtok_r(tmp, ",", &tok_buf);
  while(token != ((void*)0)) {
    if(strcasecompare(token, DIGEST_QOP_VALUE_STRING_AUTH))
      *value |= DIGEST_QOP_VALUE_AUTH;
    else if(strcasecompare(token, DIGEST_QOP_VALUE_STRING_AUTH_INT))
      *value |= DIGEST_QOP_VALUE_AUTH_INT;
    else if(strcasecompare(token, DIGEST_QOP_VALUE_STRING_AUTH_CONF))
      *value |= DIGEST_QOP_VALUE_AUTH_CONF;

    token = strtok_r(((void*)0), ",", &tok_buf);
  }

  free(tmp);

  return CURLE_OK;
}
