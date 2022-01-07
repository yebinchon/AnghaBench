
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ Curl_parse_login_details (char*,int ,char**,char**,int *) ;
 int Curl_safefree (char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static CURLcode setstropt_userpwd(char *option, char **userp, char **passwdp)
{
  CURLcode result = CURLE_OK;
  char *user = ((void*)0);
  char *passwd = ((void*)0);



  if(option) {
    result = Curl_parse_login_details(option, strlen(option),
                                      (userp ? &user : ((void*)0)),
                                      (passwdp ? &passwd : ((void*)0)),
                                      ((void*)0));
  }

  if(!result) {

    if(userp) {
      if(!user && option && option[0] == ':') {

        user = strdup("");
        if(!user)
          result = CURLE_OUT_OF_MEMORY;
      }

      Curl_safefree(*userp);
      *userp = user;
    }


    if(passwdp) {
      Curl_safefree(*passwdp);
      *passwdp = passwd;
    }
  }

  return result;
}
