
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef char* curl_off_t ;
typedef int CURLcode ;
typedef int CURL ;


 scalar_t__ CURLAUTH_ANY ;
 int CURLE_OK ;
 int CURLOPT_HTTPAUTH ;
 int CURLOPT_INFILESIZE_LARGE ;
 int CURLOPT_IOCTLDATA ;
 int CURLOPT_IOCTLFUNCTION ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_USERPWD ;
 int CURL_GLOBAL_ALL ;
 int O_RDONLY ;
 int close (int) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (int ) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int fprintf (int ,char*,char*) ;
 int fstat (int,struct stat*) ;
 char* my_ioctl ;
 int open (char*,int ) ;
 char* read_callback ;
 int stderr ;

int main(int argc, char **argv)
{
  CURL *curl;
  CURLcode res;
  int hd;
  struct stat file_info;

  char *file;
  char *url;

  if(argc < 3)
    return 1;

  file = argv[1];
  url = argv[2];


  hd = open(file, O_RDONLY);
  fstat(hd, &file_info);


  curl_global_init(CURL_GLOBAL_ALL);


  curl = curl_easy_init();
  if(curl) {

    curl_easy_setopt(curl, CURLOPT_READFUNCTION, read_callback);


    curl_easy_setopt(curl, CURLOPT_READDATA, (void *)&hd);


    curl_easy_setopt(curl, CURLOPT_IOCTLFUNCTION, my_ioctl);


    curl_easy_setopt(curl, CURLOPT_IOCTLDATA, (void *)&hd);


    curl_easy_setopt(curl, CURLOPT_UPLOAD, 1L);



    curl_easy_setopt(curl, CURLOPT_URL, url);



    curl_easy_setopt(curl, CURLOPT_INFILESIZE_LARGE,
                     (curl_off_t)file_info.st_size);




    curl_easy_setopt(curl, CURLOPT_HTTPAUTH, (long)CURLAUTH_ANY);


    curl_easy_setopt(curl, CURLOPT_USERPWD, "user:password");


    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }
  close(hd);

  curl_global_cleanup();
  return 0;
}
