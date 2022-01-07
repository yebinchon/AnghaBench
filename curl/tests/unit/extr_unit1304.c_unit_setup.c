
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_safefree (int ) ;
 int login ;
 int password ;
 int strdup (char*) ;

__attribute__((used)) static CURLcode unit_setup(void)
{
  password = strdup("");
  login = strdup("");
  if(!password || !login) {
    Curl_safefree(password);
    Curl_safefree(login);
    return CURLE_OUT_OF_MEMORY;
  }
  return CURLE_OK;
}
