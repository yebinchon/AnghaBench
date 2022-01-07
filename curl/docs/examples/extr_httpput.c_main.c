
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef char* curl_off_t ;
typedef char FILE ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_INFILESIZE_LARGE ;
 int CURLOPT_PUT ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (int ) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int fclose (char*) ;
 char* fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 char* read_callback ;
 int stat (char*,struct stat*) ;
 int stderr ;

int main(int argc, char **argv)
{
  CURL *curl;
  CURLcode res;
  FILE * hd_src;
  struct stat file_info;

  char *file;
  char *url;

  if(argc < 3)
    return 1;

  file = argv[1];
  url = argv[2];


  stat(file, &file_info);




  hd_src = fopen(file, "rb");


  curl_global_init(CURL_GLOBAL_ALL);


  curl = curl_easy_init();
  if(curl) {

    curl_easy_setopt(curl, CURLOPT_READFUNCTION, read_callback);


    curl_easy_setopt(curl, CURLOPT_UPLOAD, 1L);


    curl_easy_setopt(curl, CURLOPT_PUT, 1L);



    curl_easy_setopt(curl, CURLOPT_URL, url);


    curl_easy_setopt(curl, CURLOPT_READDATA, hd_src);



    curl_easy_setopt(curl, CURLOPT_INFILESIZE_LARGE,
                     (curl_off_t)file_info.st_size);


    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }
  fclose(hd_src);

  curl_global_cleanup();
  return 0;
}
