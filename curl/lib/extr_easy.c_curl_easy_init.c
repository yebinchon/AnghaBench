
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef scalar_t__ CURLcode ;


 int CURL_GLOBAL_DEFAULT ;
 scalar_t__ Curl_open (struct Curl_easy**) ;
 int DEBUGF (int ) ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 int initialized ;
 int stderr ;

struct Curl_easy *curl_easy_init(void)
{
  CURLcode result;
  struct Curl_easy *data;


  if(!initialized) {
    result = curl_global_init(CURL_GLOBAL_DEFAULT);
    if(result) {

      DEBUGF(fprintf(stderr, "Error: curl_global_init failed\n"));
      return ((void*)0);
    }
  }


  result = Curl_open(&data);
  if(result) {
    DEBUGF(fprintf(stderr, "Error: Curl_open failed\n"));
    return ((void*)0);
  }

  return data;
}
