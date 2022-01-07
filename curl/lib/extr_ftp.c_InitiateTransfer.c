
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pending_resp; } ;
struct TYPE_9__ {scalar_t__ state_saved; int retr_size_saved; TYPE_3__ pp; } ;
struct TYPE_10__ {TYPE_4__ ftpc; } ;
struct TYPE_6__ {scalar_t__ ftp_use_data_ssl; } ;
struct connectdata {TYPE_5__ proto; int * sock; TYPE_1__ bits; struct Curl_easy* data; } ;
struct TYPE_7__ {int infilesize; } ;
struct Curl_easy {TYPE_2__ state; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_pgrsSetUploadSize (struct Curl_easy*,int ) ;
 int Curl_setup_transfer (struct Curl_easy*,size_t,int,int ,int) ;
 int Curl_sndbufset (int ) ;
 scalar_t__ Curl_ssl_connect (struct connectdata*,size_t) ;
 int FALSE ;
 int FTP_STOP ;
 scalar_t__ FTP_STOR ;
 size_t SECONDARYSOCKET ;
 int TRUE ;
 int infof (struct Curl_easy*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode InitiateTransfer(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;
  CURLcode result = CURLE_OK;

  if(conn->bits.ftp_use_data_ssl) {


    infof(data, "Doing the SSL/TLS handshake on the data stream\n");
    result = Curl_ssl_connect(conn, SECONDARYSOCKET);
    if(result)
      return result;
  }

  if(conn->proto.ftpc.state_saved == FTP_STOR) {


    Curl_pgrsSetUploadSize(data, data->state.infilesize);


    Curl_sndbufset(conn->sock[SECONDARYSOCKET]);

    Curl_setup_transfer(data, -1, -1, FALSE, SECONDARYSOCKET);
  }
  else {

    Curl_setup_transfer(data, SECONDARYSOCKET,
                        conn->proto.ftpc.retr_size_saved, FALSE, -1);
  }

  conn->proto.ftpc.pp.pending_resp = TRUE;
  state(conn, FTP_STOP);

  return CURLE_OK;
}
