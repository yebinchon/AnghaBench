#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  infilesize; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  imapstate ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_UPLOAD_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FIRSTSOCKET ; 
 int /*<<< orphan*/  IMAP_STOP ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC3(struct connectdata *conn, int imapcode,
                                       imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate; /* No use for this yet */

  if(imapcode != '+') {
    result = CURLE_UPLOAD_FAILED;
  }
  else {
    /* Set the progress upload size */
    FUNC0(data, data->state.infilesize);

    /* IMAP upload */
    FUNC1(data, -1, -1, FALSE, FIRSTSOCKET);

    /* End of DO phase */
    FUNC2(conn, IMAP_STOP);
  }

  return result;
}