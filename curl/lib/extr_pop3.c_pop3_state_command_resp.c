
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pingpong {scalar_t__ cache_size; scalar_t__ cache; } ;
struct pop3_conn {int eob; int strip; struct pingpong pp; } ;
struct TYPE_5__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct POP3 {scalar_t__ transfer; } ;
struct TYPE_6__ {int opt_no_body; } ;
struct TYPE_4__ {struct POP3* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_1__ req; } ;
typedef int pop3state ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_RECV_ERROR ;
 scalar_t__ Curl_pop3_write (struct connectdata*,scalar_t__,scalar_t__) ;
 int Curl_safefree (scalar_t__) ;
 int Curl_setup_transfer (struct Curl_easy*,int ,int,int ,int) ;
 int FALSE ;
 int FIRSTSOCKET ;
 scalar_t__ FTPTRANSFER_BODY ;
 int POP3_STOP ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_state_command_resp(struct connectdata *conn,
                                        int pop3code,
                                        pop3state instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct POP3 *pop3 = data->req.protop;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  struct pingpong *pp = &pop3c->pp;

  (void)instate;

  if(pop3code != '+') {
    state(conn, POP3_STOP);
    return CURLE_RECV_ERROR;
  }





  pop3c->eob = 2;



  pop3c->strip = 2;

  if(pop3->transfer == FTPTRANSFER_BODY) {

    Curl_setup_transfer(data, FIRSTSOCKET, -1, FALSE, -1);

    if(pp->cache) {




      if(!data->set.opt_no_body) {
        result = Curl_pop3_write(conn, pp->cache, pp->cache_size);
        if(result)
          return result;
      }


      Curl_safefree(pp->cache);


      pp->cache_size = 0;
    }
  }


  state(conn, POP3_STOP);

  return result;
}
