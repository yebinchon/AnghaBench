
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int dummy; } ;
struct SingleRequest {int dummy; } ;
struct TYPE_2__ {int maxdownload; } ;
struct Curl_easy {int conn; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CONN_INUSE (struct connectdata*) ;
 scalar_t__ CURLE_NO_CONNECTION_AVAILABLE ;
 int Curl_attach_connnection (struct Curl_easy*,struct connectdata*) ;
 int Curl_disconnect (struct Curl_easy*,struct connectdata*,int) ;
 int Curl_free_request_state (struct Curl_easy*) ;
 scalar_t__ Curl_setup_conn (struct connectdata*,int*) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ create_conn (struct Curl_easy*,struct connectdata**,int*) ;
 int memset (TYPE_1__*,int ,int) ;

CURLcode Curl_connect(struct Curl_easy *data,
                      bool *asyncp,
                      bool *protocol_done)
{
  CURLcode result;
  struct connectdata *conn;

  *asyncp = FALSE;


  Curl_free_request_state(data);
  memset(&data->req, 0, sizeof(struct SingleRequest));
  data->req.maxdownload = -1;


  result = create_conn(data, &conn, asyncp);

  if(!result) {
    if(CONN_INUSE(conn))

      *protocol_done = TRUE;
    else if(!*asyncp) {



      result = Curl_setup_conn(conn, protocol_done);
    }
  }

  if(result == CURLE_NO_CONNECTION_AVAILABLE) {
    return result;
  }
  else if(result && conn) {


    Curl_disconnect(data, conn, TRUE);
  }
  else if(!result && !data->conn)

    Curl_attach_connnection(data, conn);

  return result;
}
