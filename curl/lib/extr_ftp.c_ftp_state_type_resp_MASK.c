#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef  scalar_t__ ftpstate ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_FTP_COULDNT_SET_TYPE ; 
 int /*<<< orphan*/  CURLE_OK ; 
 scalar_t__ FTP_LIST_TYPE ; 
 scalar_t__ FTP_RETR_TYPE ; 
 scalar_t__ FTP_STOR_TYPE ; 
 scalar_t__ FTP_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,char*,int) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn,
                                    int ftpcode,
                                    ftpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  if(ftpcode/100 != 2) {
    /* "sasserftpd" and "(u)r(x)bot ftpd" both responds with 226 after a
       successful 'TYPE I'. While that is not as RFC959 says, it is still a
       positive response code and we allow that. */
    FUNC0(data, "Couldn't set desired mode");
    return CURLE_FTP_COULDNT_SET_TYPE;
  }
  if(ftpcode != 200)
    FUNC5(data, "Got a %03d response code instead of the assumed 200\n",
          ftpcode);

  if(instate == FTP_TYPE)
    result = FUNC3(conn);
  else if(instate == FTP_LIST_TYPE)
    result = FUNC1(conn);
  else if(instate == FTP_RETR_TYPE)
    result = FUNC2(conn);
  else if(instate == FTP_STOR_TYPE)
    result = FUNC4(conn);

  return result;
}