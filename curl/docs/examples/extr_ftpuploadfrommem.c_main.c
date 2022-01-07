
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WriteThis {scalar_t__ sizeleft; int readptr; } ;
typedef long curl_off_t ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_INFILESIZE_LARGE ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_USERPWD ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_DEFAULT ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (scalar_t__) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int data ;
 int fprintf (int ,char*,char*) ;
 long read_callback ;
 int stderr ;
 scalar_t__ strlen (int ) ;

int main(void)
{
  CURL *curl;
  CURLcode res;

  struct WriteThis upload;

  upload.readptr = data;
  upload.sizeleft = strlen(data);


  res = curl_global_init(CURL_GLOBAL_DEFAULT);

  if(res != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed: %s\n",
            curl_easy_strerror(res));
    return 1;
  }


  curl = curl_easy_init();
  if(curl) {

    curl_easy_setopt(curl, CURLOPT_URL,
                     "ftp://example.com/path/to/upload/file");


    curl_easy_setopt(curl, CURLOPT_USERPWD, "login:secret");


    curl_easy_setopt(curl, CURLOPT_UPLOAD, 1L);


    curl_easy_setopt(curl, CURLOPT_READFUNCTION, read_callback);


    curl_easy_setopt(curl, CURLOPT_READDATA, &upload);


    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);


    curl_easy_setopt(curl, CURLOPT_INFILESIZE_LARGE,
                     (curl_off_t)upload.sizeleft);


    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }
  curl_global_cleanup();
  return 0;
}
