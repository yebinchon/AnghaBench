
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char FILE ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_HEADERFUNCTION ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int FTPBODY ;
 int FTPHEADERS ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (int ) ;
 int fclose (char*) ;
 char* fopen (int ,char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* write_response ;

int main(void)
{
  CURL *curl;
  CURLcode res;
  FILE *ftpfile;
  FILE *respfile;


  ftpfile = fopen(FTPBODY, "wb");


  respfile = fopen(FTPHEADERS, "wb");

  curl = curl_easy_init();
  if(curl) {

    curl_easy_setopt(curl, CURLOPT_URL, "ftp://ftp.example.com/");
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, ftpfile);


    curl_easy_setopt(curl, CURLOPT_HEADERFUNCTION, write_response);
    curl_easy_setopt(curl, CURLOPT_HEADERDATA, respfile);
    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }

  fclose(ftpfile);
  fclose(respfile);

  return 0;
}
