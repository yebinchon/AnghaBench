
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char FILE ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLOPT_NOBODY ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int HTTP_COMMAND_HEAD ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 int fclose (char*) ;
 char* fopen (char*,char*) ;

int SyncTime_CURL_Fetch(CURL *curl, char *URL_Str, char *OutFileName,
                        int HttpGetBody)
{
  FILE *outfile;
  CURLcode res;

  outfile = ((void*)0);
  if(HttpGetBody == HTTP_COMMAND_HEAD)
    curl_easy_setopt(curl, CURLOPT_NOBODY, 1L);
  else {
    outfile = fopen(OutFileName, "wb");
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, outfile);
  }

  curl_easy_setopt(curl, CURLOPT_URL, URL_Str);
  res = curl_easy_perform(curl);
  if(outfile != ((void*)0))
    fclose(outfile);
  return res;
}
