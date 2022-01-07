
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ftp_conn {scalar_t__ count1; void* wait_data_conn; int file; void* dont_check; scalar_t__ state; } ;
struct TYPE_6__ {scalar_t__ httpproxy; scalar_t__ tunnel_proxy; int * tcpconnect; } ;
struct TYPE_5__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_2__ bits; TYPE_1__ proto; struct Curl_easy* data; } ;
struct FTP {scalar_t__ transfer; int downloadsize; } ;
struct TYPE_8__ {void* prefer_ascii; scalar_t__ ftp_list_only; scalar_t__ upload; } ;
struct TYPE_7__ {scalar_t__ maxdownload; struct FTP* protop; } ;
struct Curl_easy {TYPE_4__ set; TYPE_3__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ AcceptServerConnect (struct connectdata*) ;
 scalar_t__ CONNECT_SECONDARYSOCKET_PROXY_SSL () ;
 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_connect_ongoing (struct connectdata*) ;
 scalar_t__ Curl_is_connected (struct connectdata*,size_t,int*) ;
 scalar_t__ Curl_proxyCONNECT (struct connectdata*,size_t,int *,int ) ;
 scalar_t__ Curl_proxy_connect (struct connectdata*,size_t) ;
 scalar_t__ Curl_range (struct connectdata*) ;
 int Curl_setup_transfer (struct Curl_easy*,int,int,void*,int) ;
 int DEBUGF (int ) ;
 void* FALSE ;
 scalar_t__ FTPTRANSFER_BODY ;
 scalar_t__ FTPTRANSFER_INFO ;
 int FTP_LIST_TYPE ;
 int FTP_RETR_TYPE ;
 int FTP_STOR_TYPE ;
 scalar_t__ InitiateTransfer (struct connectdata*) ;
 scalar_t__ ReceivedServerConnect (struct connectdata*,int*) ;
 size_t SECONDARYSOCKET ;
 void* TRUE ;
 scalar_t__ ftp_epsv_disable (struct connectdata*) ;
 scalar_t__ ftp_multi_statemach (struct connectdata*,int*) ;
 scalar_t__ ftp_nb_type (struct connectdata*,void*,int ) ;
 int infof (struct Curl_easy*,char*,...) ;

__attribute__((used)) static CURLcode ftp_do_more(struct connectdata *conn, int *completep)
{
  struct Curl_easy *data = conn->data;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  CURLcode result = CURLE_OK;
  bool connected = FALSE;
  bool complete = FALSE;


  struct FTP *ftp = data->req.protop;


  if(!conn->bits.tcpconnect[SECONDARYSOCKET]) {
    if(Curl_connect_ongoing(conn)) {


      result = Curl_proxyCONNECT(conn, SECONDARYSOCKET, ((void*)0), 0);

      return result;
    }

    result = Curl_is_connected(conn, SECONDARYSOCKET, &connected);


    if(connected) {
      DEBUGF(infof(data, "DO-MORE connected phase starts\n"));
    }
    else {
      if(result && (ftpc->count1 == 0)) {
        *completep = -1;

        return ftp_epsv_disable(conn);
      }
      return result;
    }
  }

  result = Curl_proxy_connect(conn, SECONDARYSOCKET);
  if(result)
    return result;

  if(CONNECT_SECONDARYSOCKET_PROXY_SSL())
    return result;

  if(conn->bits.tunnel_proxy && conn->bits.httpproxy &&
     Curl_connect_ongoing(conn))
    return result;


  if(ftpc->state) {


    result = ftp_multi_statemach(conn, &complete);

    *completep = (int)complete;



    if(result || !ftpc->wait_data_conn)
      return result;




    *completep = 0;
  }

  if(ftp->transfer <= FTPTRANSFER_INFO) {



    if(ftpc->wait_data_conn == TRUE) {
      bool serv_conned;

      result = ReceivedServerConnect(conn, &serv_conned);
      if(result)
        return result;

      if(serv_conned) {

        result = AcceptServerConnect(conn);
        ftpc->wait_data_conn = FALSE;
        if(!result)
          result = InitiateTransfer(conn);

        if(result)
          return result;

        *completep = 1;

      }
    }
    else if(data->set.upload) {
      result = ftp_nb_type(conn, data->set.prefer_ascii, FTP_STOR_TYPE);
      if(result)
        return result;

      result = ftp_multi_statemach(conn, &complete);

      *completep = (int)complete;
    }
    else {

      ftp->downloadsize = -1;

      result = Curl_range(conn);

      if(result == CURLE_OK && data->req.maxdownload >= 0) {

        ftpc->dont_check = TRUE;
      }

      if(result)
        ;
      else if(data->set.ftp_list_only || !ftpc->file) {





        if(ftp->transfer == FTPTRANSFER_BODY) {
          result = ftp_nb_type(conn, TRUE, FTP_LIST_TYPE);
          if(result)
            return result;
        }

      }
      else {
        result = ftp_nb_type(conn, data->set.prefer_ascii, FTP_RETR_TYPE);
        if(result)
          return result;
      }

      result = ftp_multi_statemach(conn, &complete);
      *completep = (int)complete;
    }
    return result;
  }


  Curl_setup_transfer(data, -1, -1, FALSE, -1);

  if(!ftpc->wait_data_conn) {

    *completep = 1;
    DEBUGF(infof(data, "DO-MORE phase ends with %d\n", (int)result));
  }

  return result;
}
