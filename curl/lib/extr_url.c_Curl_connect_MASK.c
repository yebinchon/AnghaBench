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
struct connectdata {int dummy; } ;
struct SingleRequest {int dummy; } ;
struct TYPE_2__ {int maxdownload; } ;
struct Curl_easy {int /*<<< orphan*/  conn; TYPE_1__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct connectdata*) ; 
 scalar_t__ CURLE_NO_CONNECTION_AVAILABLE ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,struct connectdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,struct connectdata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*) ; 
 scalar_t__ FUNC4 (struct connectdata*,int*) ; 
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC5 (struct Curl_easy*,struct connectdata**,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

CURLcode FUNC7(struct Curl_easy *data,
                      bool *asyncp,
                      bool *protocol_done)
{
  CURLcode result;
  struct connectdata *conn;

  *asyncp = FALSE; /* assume synchronous resolves by default */

  /* init the single-transfer specific data */
  FUNC3(data);
  FUNC6(&data->req, 0, sizeof(struct SingleRequest));
  data->req.maxdownload = -1;

  /* call the stuff that needs to be called */
  result = FUNC5(data, &conn, asyncp);

  if(!result) {
    if(FUNC0(conn))
      /* multiplexed */
      *protocol_done = TRUE;
    else if(!*asyncp) {
      /* DNS resolution is done: that's either because this is a reused
         connection, in which case DNS was unnecessary, or because DNS
         really did finish already (synch resolver/fast async resolve) */
      result = FUNC4(conn, protocol_done);
    }
  }

  if(result == CURLE_NO_CONNECTION_AVAILABLE) {
    return result;
  }
  else if(result && conn) {
    /* We're not allowed to return failure with memory left allocated in the
       connectdata struct, free those here */
    FUNC2(data, conn, TRUE);
  }
  else if(!result && !data->conn)
    /* FILE: transfers already have the connection attached */
    FUNC1(data, conn);

  return result;
}