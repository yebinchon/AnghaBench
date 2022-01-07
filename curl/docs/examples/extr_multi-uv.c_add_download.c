
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const FILE ;
typedef int CURL ;


 int CURLOPT_PRIVATE ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,char const*) ;
 int curl_handle ;
 int curl_multi_add_handle (int ,int *) ;
 char* fopen (char*,char*) ;
 int fprintf (int ,char*,char const*,...) ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;

__attribute__((used)) static void add_download(const char *url, int num)
{
  char filename[50];
  FILE *file;
  CURL *handle;

  snprintf(filename, 50, "%d.download", num);

  file = fopen(filename, "wb");
  if(!file) {
    fprintf(stderr, "Error opening %s\n", filename);
    return;
  }

  handle = curl_easy_init();
  curl_easy_setopt(handle, CURLOPT_WRITEDATA, file);
  curl_easy_setopt(handle, CURLOPT_PRIVATE, file);
  curl_easy_setopt(handle, CURLOPT_URL, url);
  curl_multi_add_handle(curl_handle, handle);
  fprintf(stderr, "Added download %s -> %s\n", url, filename);
}
