
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pop3_conn {char* apoptimestamp; int authtypes; } ;
struct TYPE_3__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct TYPE_4__ {char* buffer; } ;
struct Curl_easy {TYPE_2__ state; } ;
typedef int pop3state ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_WEIRD_SERVER_REPLY ;
 int Curl_safefree (char*) ;
 int POP3_TYPE_APOP ;
 scalar_t__ calloc (int,size_t) ;
 int failf (struct Curl_easy*,char*) ;
 int memcpy (char*,char const*,size_t) ;
 int pop3_perform_capa (struct connectdata*) ;
 char* strchr (char*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static CURLcode pop3_state_servergreet_resp(struct connectdata *conn,
                                            int pop3code,
                                            pop3state instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  const char *line = data->state.buffer;
  size_t len = strlen(line);

  (void)instate;

  if(pop3code != '+') {
    failf(data, "Got unexpected pop3-server response");
    result = CURLE_WEIRD_SERVER_REPLY;
  }
  else {

    if(len >= 4 && line[len - 2] == '>') {

      size_t i;
      for(i = 3; i < len - 2; ++i) {
        if(line[i] == '<') {

          size_t timestamplen = len - 1 - i;
          char *at;
          if(!timestamplen)
            break;


          pop3c->apoptimestamp = (char *)calloc(1, timestamplen + 1);

          if(!pop3c->apoptimestamp)
            break;


          memcpy(pop3c->apoptimestamp, line + i, timestamplen);
          pop3c->apoptimestamp[timestamplen] = '\0';




          at = strchr(pop3c->apoptimestamp, '@');
          if(!at)
            Curl_safefree(pop3c->apoptimestamp);
          else

            pop3c->authtypes |= POP3_TYPE_APOP;
          break;
        }
      }
    }

    result = pop3_perform_capa(conn);
  }

  return result;
}
