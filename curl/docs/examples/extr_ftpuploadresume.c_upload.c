
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_GOT_NOTHING ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_APPEND ;
 int CURLOPT_FTPPORT ;
 int CURLOPT_FTP_CREATE_MISSING_DIRS ;
 int CURLOPT_FTP_RESPONSE_TIMEOUT ;
 int CURLOPT_HEADER ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_HEADERFUNCTION ;
 int CURLOPT_NOBODY ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEFUNCTION ;
 int SEEK_SET ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (scalar_t__) ;
 long discardfunc ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fseek (int *,long,int ) ;
 long getcontentlengthfunc ;
 int perror (int *) ;
 long readfunc ;
 int stderr ;

__attribute__((used)) static int upload(CURL *curlhandle, const char *remotepath,
                  const char *localpath, long timeout, long tries)
{
  FILE *f;
  long uploaded_len = 0;
  CURLcode r = CURLE_GOT_NOTHING;
  int c;

  f = fopen(localpath, "rb");
  if(!f) {
    perror(((void*)0));
    return 0;
  }

  curl_easy_setopt(curlhandle, CURLOPT_UPLOAD, 1L);

  curl_easy_setopt(curlhandle, CURLOPT_URL, remotepath);

  if(timeout)
    curl_easy_setopt(curlhandle, CURLOPT_FTP_RESPONSE_TIMEOUT, timeout);

  curl_easy_setopt(curlhandle, CURLOPT_HEADERFUNCTION, getcontentlengthfunc);
  curl_easy_setopt(curlhandle, CURLOPT_HEADERDATA, &uploaded_len);

  curl_easy_setopt(curlhandle, CURLOPT_WRITEFUNCTION, discardfunc);

  curl_easy_setopt(curlhandle, CURLOPT_READFUNCTION, readfunc);
  curl_easy_setopt(curlhandle, CURLOPT_READDATA, f);


  curl_easy_setopt(curlhandle, CURLOPT_FTPPORT, "-");
  curl_easy_setopt(curlhandle, CURLOPT_FTP_CREATE_MISSING_DIRS, 1L);

  curl_easy_setopt(curlhandle, CURLOPT_VERBOSE, 1L);

  for(c = 0; (r != CURLE_OK) && (c < tries); c++) {

    if(c) {
      curl_easy_setopt(curlhandle, CURLOPT_NOBODY, 1L);
      curl_easy_setopt(curlhandle, CURLOPT_HEADER, 1L);

      r = curl_easy_perform(curlhandle);
      if(r != CURLE_OK)
        continue;

      curl_easy_setopt(curlhandle, CURLOPT_NOBODY, 0L);
      curl_easy_setopt(curlhandle, CURLOPT_HEADER, 0L);

      fseek(f, uploaded_len, SEEK_SET);

      curl_easy_setopt(curlhandle, CURLOPT_APPEND, 1L);
    }
    else {
      curl_easy_setopt(curlhandle, CURLOPT_APPEND, 0L);
    }

    r = curl_easy_perform(curlhandle);
  }

  fclose(f);

  if(r == CURLE_OK)
    return 1;
  else {
    fprintf(stderr, "%s\n", curl_easy_strerror(r));
    return 0;
  }
}
