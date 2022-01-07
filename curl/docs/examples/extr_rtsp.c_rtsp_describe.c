
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_RTSP_REQUEST ;
 int CURLOPT_WRITEDATA ;
 scalar_t__ CURL_RTSPREQ_DESCRIBE ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int my_curl_easy_perform (int *) ;
 int my_curl_easy_setopt (int *,int ,long) ;
 int printf (char*,char const*) ;
 int stderr ;
 int * stdout ;

__attribute__((used)) static void rtsp_describe(CURL *curl, const char *uri,
                          const char *sdp_filename)
{
  CURLcode res = CURLE_OK;
  FILE *sdp_fp = fopen(sdp_filename, "wb");
  printf("\nRTSP: DESCRIBE %s\n", uri);
  if(sdp_fp == ((void*)0)) {
    fprintf(stderr, "Could not open '%s' for writing\n", sdp_filename);
    sdp_fp = stdout;
  }
  else {
    printf("Writing SDP to '%s'\n", sdp_filename);
  }
  my_curl_easy_setopt(curl, CURLOPT_WRITEDATA, sdp_fp);
  my_curl_easy_setopt(curl, CURLOPT_RTSP_REQUEST, (long)CURL_RTSPREQ_DESCRIBE);
  my_curl_easy_perform(curl);
  my_curl_easy_setopt(curl, CURLOPT_WRITEDATA, stdout);
  if(sdp_fp != stdout) {
    fclose(sdp_fp);
  }
}
