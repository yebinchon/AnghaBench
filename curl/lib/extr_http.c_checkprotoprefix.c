
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {TYPE_1__* handler; } ;
struct Curl_easy {int dummy; } ;
typedef int statusline ;
struct TYPE_2__ {int protocol; } ;


 int CURLPROTO_RTSP ;
 int checkhttpprefix (struct Curl_easy*,char const*,size_t) ;
 int checkrtspprefix (struct Curl_easy*,char const*,size_t) ;

__attribute__((used)) static statusline
checkprotoprefix(struct Curl_easy *data, struct connectdata *conn,
                 const char *s, size_t len)
{

  if(conn->handler->protocol & CURLPROTO_RTSP)
    return checkrtspprefix(data, s, len);




  return checkhttpprefix(data, s, len);
}
