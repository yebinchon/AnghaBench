
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_off_t ;
typedef int FILE ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_GOT_NOTHING ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_APPEND ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int SEEK_SET ;
 int _fseeki64 (int *,int,int ) ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (scalar_t__) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fseek (int *,long,int ) ;
 int perror (int *) ;
 int printf (char*) ;
 long readfunc ;
 int sftpGetRemoteFileSize (char const*) ;
 int stderr ;

__attribute__((used)) static int sftpResumeUpload(CURL *curlhandle, const char *remotepath,
                            const char *localpath)
{
  FILE *f = ((void*)0);
  CURLcode result = CURLE_GOT_NOTHING;

  curl_off_t remoteFileSizeByte = sftpGetRemoteFileSize(remotepath);
  if(-1 == remoteFileSizeByte) {
    printf("Error reading the remote file size: unable to resume upload\n");
    return -1;
  }

  f = fopen(localpath, "rb");
  if(!f) {
    perror(((void*)0));
    return 0;
  }

  curl_easy_setopt(curlhandle, CURLOPT_UPLOAD, 1L);
  curl_easy_setopt(curlhandle, CURLOPT_URL, remotepath);
  curl_easy_setopt(curlhandle, CURLOPT_READFUNCTION, readfunc);
  curl_easy_setopt(curlhandle, CURLOPT_READDATA, f);




  fseek(f, (long)remoteFileSizeByte, SEEK_SET);

  curl_easy_setopt(curlhandle, CURLOPT_APPEND, 1L);
  result = curl_easy_perform(curlhandle);

  fclose(f);

  if(result == CURLE_OK)
    return 1;
  else {
    fprintf(stderr, "%s\n", curl_easy_strerror(result));
    return 0;
  }
}
