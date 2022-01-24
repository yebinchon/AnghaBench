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
struct TYPE_2__ {int size; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*,int) ; 
 int FALSE ; 
 scalar_t__ FUNC4 (struct connectdata*,int) ; 
 scalar_t__ FUNC5 (struct connectdata*,int*,int*) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn,
                                      bool *dophase_done)
{
  CURLcode result = CURLE_OK;
  bool connected = FALSE;
  struct Curl_easy *data = conn->data;

  /* Make sure size is unknown at this point */
  data->req.size = -1;

  /* Set the progress data */
  FUNC2(data, 0);
  FUNC0(data, 0);
  FUNC3(data, -1);
  FUNC1(data, -1);

  /* Carry out the perform */
  result = FUNC5(conn, &connected, dophase_done);

  /* Perform post DO phase operations if necessary */
  if(!result && *dophase_done)
    result = FUNC4(conn, connected);

  return result;
}