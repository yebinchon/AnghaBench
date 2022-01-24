#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ftp_conn {scalar_t__ count1; void* wait_data_conn; int /*<<< orphan*/  file; void* dont_check; scalar_t__ state; } ;
struct TYPE_6__ {scalar_t__ httpproxy; scalar_t__ tunnel_proxy; int /*<<< orphan*/ * tcpconnect; } ;
struct TYPE_5__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_2__ bits; TYPE_1__ proto; struct Curl_easy* data; } ;
struct FTP {scalar_t__ transfer; int downloadsize; } ;
struct TYPE_8__ {void* prefer_ascii; scalar_t__ ftp_list_only; scalar_t__ upload; } ;
struct TYPE_7__ {scalar_t__ maxdownload; struct FTP* protop; } ;
struct Curl_easy {TYPE_4__ set; TYPE_3__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct connectdata*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ FUNC2 (struct connectdata*) ; 
 scalar_t__ FUNC3 (struct connectdata*,size_t,int*) ; 
 scalar_t__ FUNC4 (struct connectdata*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct connectdata*,size_t) ; 
 scalar_t__ FUNC6 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*,int,int,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 scalar_t__ FTPTRANSFER_BODY ; 
 scalar_t__ FTPTRANSFER_INFO ; 
 int /*<<< orphan*/  FTP_LIST_TYPE ; 
 int /*<<< orphan*/  FTP_RETR_TYPE ; 
 int /*<<< orphan*/  FTP_STOR_TYPE ; 
 scalar_t__ FUNC9 (struct connectdata*) ; 
 scalar_t__ FUNC10 (struct connectdata*,int*) ; 
 size_t SECONDARYSOCKET ; 
 void* TRUE ; 
 scalar_t__ FUNC11 (struct connectdata*) ; 
 scalar_t__ FUNC12 (struct connectdata*,int*) ; 
 scalar_t__ FUNC13 (struct connectdata*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct Curl_easy*,char*,...) ; 

__attribute__((used)) static CURLcode FUNC15(struct connectdata *conn, int *completep)
{
  struct Curl_easy *data = conn->data;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  CURLcode result = CURLE_OK;
  bool connected = FALSE;
  bool complete = FALSE;

  /* the ftp struct is inited in ftp_connect() */
  struct FTP *ftp = data->req.protop;

  /* if the second connection isn't done yet, wait for it */
  if(!conn->bits.tcpconnect[SECONDARYSOCKET]) {
    if(FUNC2(conn)) {
      /* As we're in TUNNEL_CONNECT state now, we know the proxy name and port
         aren't used so we blank their arguments. */
      result = FUNC4(conn, SECONDARYSOCKET, NULL, 0);

      return result;
    }

    result = FUNC3(conn, SECONDARYSOCKET, &connected);

    /* Ready to do more? */
    if(connected) {
      FUNC8(FUNC14(data, "DO-MORE connected phase starts\n"));
    }
    else {
      if(result && (ftpc->count1 == 0)) {
        *completep = -1; /* go back to DOING please */
        /* this is a EPSV connect failing, try PASV instead */
        return FUNC11(conn);
      }
      return result;
    }
  }

  result = FUNC5(conn, SECONDARYSOCKET);
  if(result)
    return result;

  if(FUNC1())
    return result;

  if(conn->bits.tunnel_proxy && conn->bits.httpproxy &&
     FUNC2(conn))
    return result;


  if(ftpc->state) {
    /* already in a state so skip the initial commands.
       They are only done to kickstart the do_more state */
    result = FUNC12(conn, &complete);

    *completep = (int)complete;

    /* if we got an error or if we don't wait for a data connection return
       immediately */
    if(result || !ftpc->wait_data_conn)
      return result;

    /* if we reach the end of the FTP state machine here, *complete will be
       TRUE but so is ftpc->wait_data_conn, which says we need to wait for the
       data connection and therefore we're not actually complete */
    *completep = 0;
  }

  if(ftp->transfer <= FTPTRANSFER_INFO) {
    /* a transfer is about to take place, or if not a file name was given
       so we'll do a SIZE on it later and then we need the right TYPE first */

    if(ftpc->wait_data_conn == TRUE) {
      bool serv_conned;

      result = FUNC10(conn, &serv_conned);
      if(result)
        return result; /* Failed to accept data connection */

      if(serv_conned) {
        /* It looks data connection is established */
        result = FUNC0(conn);
        ftpc->wait_data_conn = FALSE;
        if(!result)
          result = FUNC9(conn);

        if(result)
          return result;

        *completep = 1; /* this state is now complete when the server has
                           connected back to us */
      }
    }
    else if(data->set.upload) {
      result = FUNC13(conn, data->set.prefer_ascii, FTP_STOR_TYPE);
      if(result)
        return result;

      result = FUNC12(conn, &complete);
      /* ftpc->wait_data_conn is always false here */
      *completep = (int)complete;
    }
    else {
      /* download */
      ftp->downloadsize = -1; /* unknown as of yet */

      result = FUNC6(conn);

      if(result == CURLE_OK && data->req.maxdownload >= 0) {
        /* Don't check for successful transfer */
        ftpc->dont_check = TRUE;
      }

      if(result)
        ;
      else if(data->set.ftp_list_only || !ftpc->file) {
        /* The specified path ends with a slash, and therefore we think this
           is a directory that is requested, use LIST. But before that we
           need to set ASCII transfer mode. */

        /* But only if a body transfer was requested. */
        if(ftp->transfer == FTPTRANSFER_BODY) {
          result = FUNC13(conn, TRUE, FTP_LIST_TYPE);
          if(result)
            return result;
        }
        /* otherwise just fall through */
      }
      else {
        result = FUNC13(conn, data->set.prefer_ascii, FTP_RETR_TYPE);
        if(result)
          return result;
      }

      result = FUNC12(conn, &complete);
      *completep = (int)complete;
    }
    return result;
  }

  /* no data to transfer */
  FUNC7(data, -1, -1, FALSE, -1);

  if(!ftpc->wait_data_conn) {
    /* no waiting for the data connection so this is now complete */
    *completep = 1;
    FUNC8(FUNC14(data, "DO-MORE phase ends with %d\n", (int)result));
  }

  return result;
}