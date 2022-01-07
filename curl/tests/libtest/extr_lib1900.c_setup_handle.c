
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int urlbuf ;
typedef int CURLM ;


 int CURLOPT_FAILONERROR ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int curl_easy_setopt (int ,int ,...) ;
 int curl_multi_add_handle (int *,int ) ;
 int * handles ;
 int msnprintf (char*,int,char*,char*,int ) ;
 int * urlstring ;
 char* write_callback ;

__attribute__((used)) static void setup_handle(char *base_url, CURLM *m, int handlenum)
{
  char urlbuf[256];

  msnprintf(urlbuf, sizeof(urlbuf), "%s%s", base_url, urlstring[handlenum]);
  curl_easy_setopt(handles[handlenum], CURLOPT_URL, urlbuf);
  curl_easy_setopt(handles[handlenum], CURLOPT_VERBOSE, 1L);
  curl_easy_setopt(handles[handlenum], CURLOPT_FAILONERROR, 1L);
  curl_easy_setopt(handles[handlenum], CURLOPT_WRITEFUNCTION, write_callback);
  curl_easy_setopt(handles[handlenum], CURLOPT_WRITEDATA, ((void*)0));
  curl_multi_add_handle(m, handles[handlenum]);
}
