
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int httpversion; } ;
struct TYPE_2__ {int expect100header; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef int Curl_send_buffer ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_add_bufferf (int **,char*) ;
 char* Curl_checkheaders (struct connectdata*,char*) ;
 int Curl_compareheader (char const*,char*,char*) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ use_http_1_1plus (struct Curl_easy*,struct connectdata*) ;

__attribute__((used)) static CURLcode expect100(struct Curl_easy *data,
                          struct connectdata *conn,
                          Curl_send_buffer *req_buffer)
{
  CURLcode result = CURLE_OK;
  data->state.expect100header = FALSE;

  if(use_http_1_1plus(data, conn) &&
     (conn->httpversion < 20)) {



    const char *ptr = Curl_checkheaders(conn, "Expect");
    if(ptr) {
      data->state.expect100header =
        Curl_compareheader(ptr, "Expect:", "100-continue");
    }
    else {
      result = Curl_add_bufferf(&req_buffer,
                                "Expect: 100-continue\r\n");
      if(!result)
        data->state.expect100header = TRUE;
    }
  }

  return result;
}
