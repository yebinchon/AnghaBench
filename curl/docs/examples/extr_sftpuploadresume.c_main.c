
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 char* curl_version () ;
 int printf (char*,char*) ;
 int sftpResumeUpload (int *,char const*,char const*) ;

int main(void)
{
  const char *remote = "sftp://user:pass@example.com/path/filename";
  const char *filename = "filename";
  CURL *curlhandle = ((void*)0);

  curl_global_init(CURL_GLOBAL_ALL);
  curlhandle = curl_easy_init();

  if(!sftpResumeUpload(curlhandle, remote, filename)) {
    printf("resumed upload using curl %s failed\n", curl_version());
  }

  curl_easy_cleanup(curlhandle);
  curl_global_cleanup();

  return 0;
}
