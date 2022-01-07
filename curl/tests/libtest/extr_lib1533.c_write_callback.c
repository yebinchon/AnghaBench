
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_data {int response_received; int easy_handle; scalar_t__ paused; } ;


 int CURLPAUSE_CONT ;
 int curl_easy_pause (int ,int ) ;

__attribute__((used)) static size_t write_callback(char *ptr, size_t size, size_t nmemb,
                             void *userdata)
{
  struct cb_data *data = (struct cb_data *)userdata;
  size_t totalsize = nmemb * size;


  (void)ptr;


  data->response_received = 1;

  if(data->paused) {

    data->paused = 0;
    curl_easy_pause(data->easy_handle, CURLPAUSE_CONT);
  }

  return totalsize;
}
