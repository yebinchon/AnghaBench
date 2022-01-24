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
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_FTP_WEIRD_PASS_REPLY ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*) ; 

__attribute__((used)) static CURLcode FUNC2(struct connectdata *conn,
                                    int ftpcode)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  if(ftpcode != 230) {
    FUNC0(data, "ACCT rejected by server: %03d", ftpcode);
    result = CURLE_FTP_WEIRD_PASS_REPLY; /* FIX */
  }
  else
    result = FUNC1(conn);

  return result;
}