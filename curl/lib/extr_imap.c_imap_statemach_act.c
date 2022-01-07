
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong {scalar_t__ sendleft; } ;
struct imap_conn {int state; struct pingpong pp; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; int * sock; } ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_WEIRD_SERVER_REPLY ;
 scalar_t__ Curl_pp_flushsend (struct pingpong*) ;
 scalar_t__ Curl_pp_moredata (struct pingpong*) ;
 scalar_t__ Curl_pp_readresp (int ,struct pingpong*,int*,size_t*) ;
 size_t FIRSTSOCKET ;
 int IMAP_STOP ;
 int IMAP_UPGRADETLS ;
 scalar_t__ imap_perform_upgrade_tls (struct connectdata*) ;
 scalar_t__ imap_state_append_final_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_append_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_auth_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_capability_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_fetch_final_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_fetch_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_listsearch_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_login_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_select_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_servergreet_resp (struct connectdata*,int,int) ;
 scalar_t__ imap_state_starttls_resp (struct connectdata*,int,int) ;
 int state (struct connectdata*,int) ;

__attribute__((used)) static CURLcode imap_statemach_act(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  curl_socket_t sock = conn->sock[FIRSTSOCKET];
  int imapcode;
  struct imap_conn *imapc = &conn->proto.imapc;
  struct pingpong *pp = &imapc->pp;
  size_t nread = 0;


  if(imapc->state == IMAP_UPGRADETLS)
    return imap_perform_upgrade_tls(conn);


  if(pp->sendleft)
    return Curl_pp_flushsend(pp);

  do {

    result = Curl_pp_readresp(sock, pp, &imapcode, &nread);
    if(result)
      return result;


    if(imapcode == -1)
      return CURLE_WEIRD_SERVER_REPLY;

    if(!imapcode)
      break;


    switch(imapc->state) {
    case 129:
      result = imap_state_servergreet_resp(conn, imapcode, imapc->state);
      break;

    case 137:
      result = imap_state_capability_resp(conn, imapcode, imapc->state);
      break;

    case 128:
      result = imap_state_starttls_resp(conn, imapcode, imapc->state);
      break;

    case 138:
      result = imap_state_auth_resp(conn, imapcode, imapc->state);
      break;

    case 133:
      result = imap_state_login_resp(conn, imapcode, imapc->state);
      break;

    case 134:
    case 131:
      result = imap_state_listsearch_resp(conn, imapcode, imapc->state);
      break;

    case 130:
      result = imap_state_select_resp(conn, imapcode, imapc->state);
      break;

    case 136:
      result = imap_state_fetch_resp(conn, imapcode, imapc->state);
      break;

    case 135:
      result = imap_state_fetch_final_resp(conn, imapcode, imapc->state);
      break;

    case 140:
      result = imap_state_append_resp(conn, imapcode, imapc->state);
      break;

    case 139:
      result = imap_state_append_final_resp(conn, imapcode, imapc->state);
      break;

    case 132:

    default:

      state(conn, IMAP_STOP);
      break;
    }
  } while(!result && imapc->state != IMAP_STOP && Curl_pp_moredata(pp));

  return result;
}
