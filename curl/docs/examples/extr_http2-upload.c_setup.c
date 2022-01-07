
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {long st_size; } ;
struct input {int num; void* in; int * hnd; } ;
typedef long curl_off_t ;
typedef int FILE ;
typedef int CURL ;


 int CURLOPT_DEBUGDATA ;
 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_HTTP_VERSION ;
 int CURLOPT_INFILESIZE_LARGE ;
 int CURLOPT_PIPEWAIT ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 long CURL_HTTP_VERSION_2_0 ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,...) ;
 void* fopen (char const*,char*) ;
 long my_trace ;
 long read_callback ;
 int snprintf (char*,int,char*,int) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static void setup(struct input *i, int num, const char *upload)
{
  FILE *out;
  char url[256];
  char filename[128];
  struct stat file_info;
  curl_off_t uploadsize;
  CURL *hnd;

  hnd = i->hnd = curl_easy_init();
  i->num = num;
  snprintf(filename, 128, "dl-%d", num);
  out = fopen(filename, "wb");

  snprintf(url, 256, "https://localhost:8443/upload-%d", num);


  stat(upload, &file_info);
  uploadsize = file_info.st_size;

  i->in = fopen(upload, "rb");


  curl_easy_setopt(hnd, CURLOPT_WRITEDATA, out);


  curl_easy_setopt(hnd, CURLOPT_READFUNCTION, read_callback);

  curl_easy_setopt(hnd, CURLOPT_READDATA, i);

  curl_easy_setopt(hnd, CURLOPT_INFILESIZE_LARGE, uploadsize);


  curl_easy_setopt(hnd, CURLOPT_URL, url);


  curl_easy_setopt(hnd, CURLOPT_UPLOAD, 1L);


  curl_easy_setopt(hnd, CURLOPT_VERBOSE, 1L);
  curl_easy_setopt(hnd, CURLOPT_DEBUGFUNCTION, my_trace);
  curl_easy_setopt(hnd, CURLOPT_DEBUGDATA, i);


  curl_easy_setopt(hnd, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);


  curl_easy_setopt(hnd, CURLOPT_SSL_VERIFYPEER, 0L);
  curl_easy_setopt(hnd, CURLOPT_SSL_VERIFYHOST, 0L);





}
