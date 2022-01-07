
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int pop3state ;
typedef int CURLcode ;


 int CURLE_LOGIN_DENIED ;
 int CURLE_OK ;
 int POP3_STOP ;
 int failf (struct Curl_easy*,char*,int) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_state_pass_resp(struct connectdata *conn, int pop3code,
                                     pop3state instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate;

  if(pop3code != '+') {
    failf(data, "Access denied. %c", pop3code);
    result = CURLE_LOGIN_DENIED;
  }
  else

    state(conn, POP3_STOP);

  return result;
}
