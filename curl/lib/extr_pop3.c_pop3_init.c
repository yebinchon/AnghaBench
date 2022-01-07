
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct POP3 {int dummy; } ;
struct TYPE_2__ {struct POP3* protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 struct POP3* calloc (int,int) ;

__attribute__((used)) static CURLcode pop3_init(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct POP3 *pop3;

  pop3 = data->req.protop = calloc(sizeof(struct POP3), 1);
  if(!pop3)
    result = CURLE_OUT_OF_MEMORY;

  return result;
}
