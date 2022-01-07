
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char FILE ;
typedef int CURL ;


 int CURLOPT_NOPROGRESS ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int fclose (char*) ;
 char* fopen (char const*,char*) ;
 int printf (char*,char*) ;
 char* write_data ;

int main(int argc, char *argv[])
{
  CURL *curl_handle;
  static const char *pagefilename = "page.out";
  FILE *pagefile;

  if(argc < 2) {
    printf("Usage: %s <URL>\n", argv[0]);
    return 1;
  }

  curl_global_init(CURL_GLOBAL_ALL);


  curl_handle = curl_easy_init();


  curl_easy_setopt(curl_handle, CURLOPT_URL, argv[1]);


  curl_easy_setopt(curl_handle, CURLOPT_VERBOSE, 1L);


  curl_easy_setopt(curl_handle, CURLOPT_NOPROGRESS, 1L);


  curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, write_data);


  pagefile = fopen(pagefilename, "wb");
  if(pagefile) {


    curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, pagefile);


    curl_easy_perform(curl_handle);


    fclose(pagefile);
  }


  curl_easy_cleanup(curl_handle);

  curl_global_cleanup();

  return 0;
}
