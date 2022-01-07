
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_CAINFO ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_KEYPASSWD ;
 int CURLOPT_SSLCERT ;
 int CURLOPT_SSLCERTTYPE ;
 int CURLOPT_SSLENGINE ;
 int CURLOPT_SSLENGINE_DEFAULT ;
 int CURLOPT_SSLKEY ;
 int CURLOPT_SSLKEYTYPE ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_DEFAULT ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 scalar_t__ curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (scalar_t__) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res;
  FILE *headerfile;
  const char *pPassphrase = ((void*)0);

  static const char *pCertFile = "testcert.pem";
  static const char *pCACertFile = "cacert.pem";
  static const char *pHeaderFile = "dumpit";

  const char *pKeyName;
  const char *pKeyType;

  const char *pEngine;






  pKeyName = "testkey.pem";
  pKeyType = "PEM";
  pEngine = ((void*)0);


  headerfile = fopen(pHeaderFile, "wb");

  curl_global_init(CURL_GLOBAL_DEFAULT);

  curl = curl_easy_init();
  if(curl) {

    curl_easy_setopt(curl, CURLOPT_URL, "HTTPS://your.favourite.ssl.site");
    curl_easy_setopt(curl, CURLOPT_HEADERDATA, headerfile);

    do {
      if(pEngine) {

        if(curl_easy_setopt(curl, CURLOPT_SSLENGINE, pEngine) != CURLE_OK) {

          fprintf(stderr, "can't set crypto engine\n");
          break;
        }
        if(curl_easy_setopt(curl, CURLOPT_SSLENGINE_DEFAULT, 1L) != CURLE_OK) {



          fprintf(stderr, "can't set crypto engine as default\n");
          break;
        }
      }


      curl_easy_setopt(curl, CURLOPT_SSLCERTTYPE, "PEM");


      curl_easy_setopt(curl, CURLOPT_SSLCERT, pCertFile);



      if(pPassphrase)
        curl_easy_setopt(curl, CURLOPT_KEYPASSWD, pPassphrase);



      curl_easy_setopt(curl, CURLOPT_SSLKEYTYPE, pKeyType);


      curl_easy_setopt(curl, CURLOPT_SSLKEY, pKeyName);


      curl_easy_setopt(curl, CURLOPT_CAINFO, pCACertFile);


      curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 1L);


      res = curl_easy_perform(curl);

      if(res != CURLE_OK)
        fprintf(stderr, "curl_easy_perform() failed: %s\n",
                curl_easy_strerror(res));


    } while(0);

    curl_easy_cleanup(curl);
  }

  curl_global_cleanup();

  return 0;
}
