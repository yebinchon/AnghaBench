
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 size_t CURL_MAX_INPUT_LENGTH ;
 int Curl_safefree (char*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;

CURLcode Curl_setstropt(char **charp, const char *s)
{



  Curl_safefree(*charp);

  if(s) {
    char *str = strdup(s);

    if(str) {
      size_t len = strlen(str);
      if(len > CURL_MAX_INPUT_LENGTH) {
        free(str);
        return CURLE_BAD_FUNCTION_ARGUMENT;
      }
    }
    if(!str)
      return CURLE_OUT_OF_MEMORY;

    *charp = str;
  }

  return CURLE_OK;
}
