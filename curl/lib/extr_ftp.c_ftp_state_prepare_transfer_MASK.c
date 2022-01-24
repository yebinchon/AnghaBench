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
struct TYPE_7__ {char* file; int /*<<< orphan*/  pp; } ;
struct TYPE_8__ {TYPE_3__ ftpc; } ;
struct connectdata {TYPE_4__ proto; struct Curl_easy* data; } ;
struct FTP {scalar_t__ transfer; } ;
struct TYPE_6__ {char** str; scalar_t__ upload; scalar_t__ ftp_list_only; scalar_t__ ftp_use_pret; scalar_t__ ftp_use_port; } ;
struct TYPE_5__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  EPRT ; 
 scalar_t__ FTPTRANSFER_BODY ; 
 int /*<<< orphan*/  FTP_PRET ; 
 int /*<<< orphan*/  FTP_RETR_PREQUOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 size_t STRING_CUSTOMREQUEST ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct FTP *ftp = conn->data->req.protop;
  struct Curl_easy *data = conn->data;

  if(ftp->transfer != FTPTRANSFER_BODY) {
    /* doesn't transfer any data */

    /* still possibly do PRE QUOTE jobs */
    FUNC4(conn, FTP_RETR_PREQUOTE);
    result = FUNC1(conn, TRUE, FTP_RETR_PREQUOTE);
  }
  else if(data->set.ftp_use_port) {
    /* We have chosen to use the PORT (or similar) command */
    result = FUNC3(conn, EPRT);
  }
  else {
    /* We have chosen (this is default) to use the PASV (or similar) command */
    if(data->set.ftp_use_pret) {
      /* The user has requested that we send a PRET command
         to prepare the server for the upcoming PASV */
      if(!conn->proto.ftpc.file) {
        FUNC0(&conn->proto.ftpc.pp, "PRET %s",
                data->set.str[STRING_CUSTOMREQUEST]?
                data->set.str[STRING_CUSTOMREQUEST]:
                (data->set.ftp_list_only?"NLST":"LIST"));
      }
      else if(data->set.upload) {
        FUNC0(&conn->proto.ftpc.pp, "PRET STOR %s", conn->proto.ftpc.file);
      }
      else {
        FUNC0(&conn->proto.ftpc.pp, "PRET RETR %s", conn->proto.ftpc.file);
      }
      FUNC4(conn, FTP_PRET);
    }
    else {
      result = FUNC2(conn);
    }
  }
  return result;
}