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
struct TYPE_7__ {int /*<<< orphan*/  pp; } ;
struct TYPE_8__ {TYPE_3__ ftpc; } ;
struct connectdata {TYPE_4__ proto; struct Curl_easy* data; } ;
struct FTP {scalar_t__ path; } ;
struct TYPE_6__ {scalar_t__ ftp_filemethod; char** str; scalar_t__ ftp_list_only; } ;
struct TYPE_5__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (struct Curl_easy*,scalar_t__,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FTPFILE_NOCWD ; 
 int /*<<< orphan*/  FTP_LIST ; 
 size_t STRING_CUSTOMREQUEST ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct FTP *ftp = data->req.protop;

  /* If this output is to be machine-parsed, the NLST command might be better
     to use, since the LIST command output is not specified or standard in any
     way. It has turned out that the NLST list output is not the same on all
     servers either... */

  /*
     if FTPFILE_NOCWD was specified, we should add the path
     as argument for the LIST / NLST / or custom command.
     Whether the server will support this, is uncertain.

     The other ftp_filemethods will CWD into dir/dir/ first and
     then just do LIST (in that case: nothing to do here)
  */
  char *lstArg = NULL;
  char *cmd;

  if((data->set.ftp_filemethod == FTPFILE_NOCWD) && ftp->path) {
    /* url-decode before evaluation: e.g. paths starting/ending with %2f */
    const char *slashPos = NULL;
    char *rawPath = NULL;
    result = FUNC1(data, ftp->path, 0, &rawPath, NULL, TRUE);
    if(result)
      return result;

    slashPos = FUNC5(rawPath, '/');
    if(slashPos) {
      /* chop off the file part if format is dir/file otherwise remove
         the trailing slash for dir/dir/ except for absolute path / */
      size_t n = slashPos - rawPath;
      if(n == 0)
        ++n;

      lstArg = rawPath;
      lstArg[n] = '\0';
    }
    else
      FUNC3(rawPath);
  }

  cmd = FUNC2("%s%s%s",
                data->set.str[STRING_CUSTOMREQUEST]?
                data->set.str[STRING_CUSTOMREQUEST]:
                (data->set.ftp_list_only?"NLST":"LIST"),
                lstArg? " ": "",
                lstArg? lstArg: "");
  FUNC3(lstArg);

  if(!cmd)
    return CURLE_OUT_OF_MEMORY;

  result = FUNC0(&conn->proto.ftpc.pp, "%s", cmd);
  FUNC3(cmd);

  if(result)
    return result;

  FUNC4(conn, FTP_LIST);

  return result;
}