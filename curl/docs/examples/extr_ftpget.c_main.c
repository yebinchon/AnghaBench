
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FtpFile {char* member_0; scalar_t__ stream; int * member_1; } ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_DEFAULT ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int fclose (scalar_t__) ;
 int fprintf (int ,char*,int) ;
 long my_fwrite ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res;
  struct FtpFile ftpfile = {
    "curl.tar.gz",
    ((void*)0)
  };

  curl_global_init(CURL_GLOBAL_DEFAULT);

  curl = curl_easy_init();
  if(curl) {



    curl_easy_setopt(curl, CURLOPT_URL,
                     "ftp://ftp.example.com/curl/curl-7.9.2.tar.gz");

    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, my_fwrite);

    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &ftpfile);


    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);

    res = curl_easy_perform(curl);


    curl_easy_cleanup(curl);

    if(CURLE_OK != res) {

      fprintf(stderr, "curl told us %d\n", res);
    }
  }

  if(ftpfile.stream)
    fclose(ftpfile.stream);

  curl_global_cleanup();

  return 0;
}
