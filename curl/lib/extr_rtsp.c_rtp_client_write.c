
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {size_t (* fwrite_rtp ) (char*,int,size_t,void*) ;size_t (* fwrite_func ) (char*,int,size_t,void*) ;void* out; void* rtp_out; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef size_t (* curl_write_callback ) (char*,int,size_t,void*) ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_WRITE_ERROR ;
 size_t CURL_WRITEFUNC_PAUSE ;
 int Curl_set_in_callback (struct Curl_easy*,int) ;
 int failf (struct Curl_easy*,char*) ;

__attribute__((used)) static
CURLcode rtp_client_write(struct connectdata *conn, char *ptr, size_t len)
{
  struct Curl_easy *data = conn->data;
  size_t wrote;
  curl_write_callback writeit;
  void *user_ptr;

  if(len == 0) {
    failf(data, "Cannot write a 0 size RTP packet.");
    return CURLE_WRITE_ERROR;
  }





  if(data->set.fwrite_rtp) {
    writeit = data->set.fwrite_rtp;
    user_ptr = data->set.rtp_out;
  }
  else {
    writeit = data->set.fwrite_func;
    user_ptr = data->set.out;
  }

  Curl_set_in_callback(data, 1);
  wrote = writeit(ptr, 1, len, user_ptr);
  Curl_set_in_callback(data, 0);

  if(CURL_WRITEFUNC_PAUSE == wrote) {
    failf(data, "Cannot pause RTP");
    return CURLE_WRITE_ERROR;
  }

  if(wrote != len) {
    failf(data, "Failed writing RTP data");
    return CURLE_WRITE_ERROR;
  }

  return CURLE_OK;
}
