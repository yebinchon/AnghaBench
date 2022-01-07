
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ulbuf; } ;
struct TYPE_3__ {int upload_buffer_size; } ;
struct Curl_easy {TYPE_2__ state; TYPE_1__ set; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 scalar_t__ malloc (int ) ;

CURLcode Curl_get_upload_buffer(struct Curl_easy *data)
{
  if(!data->state.ulbuf) {
    data->state.ulbuf = malloc(data->set.upload_buffer_size);
    if(!data->state.ulbuf)
      return CURLE_OUT_OF_MEMORY;
  }
  return CURLE_OK;
}
