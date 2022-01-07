
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pop3_conn {size_t eob; scalar_t__ strip; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct SingleRequest {int keepon; } ;
struct Curl_easy {struct SingleRequest req; } ;
typedef scalar_t__ CURLcode ;


 int CLIENTWRITE_BODY ;
 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_client_write (struct connectdata*,int ,char*,size_t) ;
 int FALSE ;
 int KEEP_RECV ;
 scalar_t__ POP3_EOB ;
 size_t POP3_EOB_LEN ;
 int TRUE ;

CURLcode Curl_pop3_write(struct connectdata *conn, char *str, size_t nread)
{

  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct SingleRequest *k = &data->req;

  struct pop3_conn *pop3c = &conn->proto.pop3c;
  bool strip_dot = FALSE;
  size_t last = 0;
  size_t i;






  for(i = 0; i < nread; i++) {
    size_t prev = pop3c->eob;

    switch(str[i]) {
    case 0x0d:
      if(pop3c->eob == 0) {
        pop3c->eob++;

        if(i) {

          result = Curl_client_write(conn, CLIENTWRITE_BODY, &str[last],
                                     i - last);

          if(result)
            return result;

          last = i;
        }
      }
      else if(pop3c->eob == 3)
        pop3c->eob++;
      else


        pop3c->eob = 1;
      break;

    case 0x0a:
      if(pop3c->eob == 1 || pop3c->eob == 4)
        pop3c->eob++;
      else


        pop3c->eob = 0;
      break;

    case 0x2e:
      if(pop3c->eob == 2)
        pop3c->eob++;
      else if(pop3c->eob == 3) {

        strip_dot = TRUE;
        pop3c->eob = 0;
      }
      else


        pop3c->eob = 0;
      break;

    default:
      pop3c->eob = 0;
      break;
    }


    if(prev && prev >= pop3c->eob) {



      while(prev && pop3c->strip) {
        prev--;
        pop3c->strip--;
      }

      if(prev) {


        result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *)POP3_EOB,
                                   strip_dot ? prev - 1 : prev);

        if(result)
          return result;

        last = i;
        strip_dot = FALSE;
      }
    }
  }

  if(pop3c->eob == POP3_EOB_LEN) {



    result = Curl_client_write(conn, CLIENTWRITE_BODY, (char *)POP3_EOB, 2);

    k->keepon &= ~KEEP_RECV;
    pop3c->eob = 0;

    return result;
  }

  if(pop3c->eob)

    return CURLE_OK;

  if(nread - last) {
    result = Curl_client_write(conn, CLIENTWRITE_BODY, &str[last],
                               nread - last);
  }

  return result;
}
