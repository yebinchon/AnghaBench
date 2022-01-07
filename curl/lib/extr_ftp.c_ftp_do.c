
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ftp_conn {void* wait_data_conn; } ;
struct TYPE_8__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_3__* data; TYPE_4__ proto; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {scalar_t__ wildcardmatch; } ;
struct TYPE_7__ {TYPE_2__ wildcard; TYPE_1__ state; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLWC_DONE ;
 scalar_t__ CURLWC_SKIP ;
 void* FALSE ;
 scalar_t__ ftp_parse_url_path (struct connectdata*) ;
 scalar_t__ ftp_regular_transfer (struct connectdata*,int*) ;
 scalar_t__ wc_statemach (struct connectdata*) ;

__attribute__((used)) static CURLcode ftp_do(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  struct ftp_conn *ftpc = &conn->proto.ftpc;

  *done = FALSE;
  ftpc->wait_data_conn = FALSE;

  if(conn->data->state.wildcardmatch) {
    result = wc_statemach(conn);
    if(conn->data->wildcard.state == CURLWC_SKIP ||
      conn->data->wildcard.state == CURLWC_DONE) {

      return CURLE_OK;
    }
    if(result)
      return result;
  }
  else {
    result = ftp_parse_url_path(conn);
    if(result)
      return result;
  }

  result = ftp_regular_transfer(conn, done);

  return result;
}
