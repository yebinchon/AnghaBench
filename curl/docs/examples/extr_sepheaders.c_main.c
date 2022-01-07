
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char FILE ;
typedef int CURL ;


 int CURLOPT_HEADERDATA ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 int curl_global_init (int ) ;
 int fclose (char*) ;
 char* fopen (char const*,char*) ;
 char* write_data ;

int main(void)
{
  CURL *curl_handle;
  static const char *headerfilename = "head.out";
  FILE *headerfile;
  static const char *bodyfilename = "body.out";
  FILE *bodyfile;

  curl_global_init(CURL_GLOBAL_ALL);


  curl_handle = curl_easy_init();


  curl_easy_setopt(curl_handle, CURLOPT_URL, "https://example.com");


  curl_easy_setopt(curl_handle, CURLOPT_NOPROGRESS, 1L);


  curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, write_data);


  headerfile = fopen(headerfilename, "wb");
  if(!headerfile) {
    curl_easy_cleanup(curl_handle);
    return -1;
  }


  bodyfile = fopen(bodyfilename, "wb");
  if(!bodyfile) {
    curl_easy_cleanup(curl_handle);
    fclose(headerfile);
    return -1;
  }


  curl_easy_setopt(curl_handle, CURLOPT_HEADERDATA, headerfile);


  curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, bodyfile);


  curl_easy_perform(curl_handle);


  fclose(headerfile);


  fclose(bodyfile);


  curl_easy_cleanup(curl_handle);

  return 0;
}
