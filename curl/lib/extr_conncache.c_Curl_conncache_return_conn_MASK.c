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
struct connectdata {int /*<<< orphan*/  lastused; struct Curl_easy* data; } ;
struct Curl_easy {TYPE_1__* multi; } ;
struct TYPE_2__ {int maxconnects; int num_easy; } ;

/* Variables and functions */
 struct connectdata* FUNC0 (struct Curl_easy*) ; 
 size_t FUNC1 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,struct connectdata*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,char*) ; 

bool FUNC5(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;

  /* data->multi->maxconnects can be negative, deal with it. */
  size_t maxconnects =
    (data->multi->maxconnects < 0) ? data->multi->num_easy * 4:
    data->multi->maxconnects;
  struct connectdata *conn_candidate = NULL;

  conn->data = NULL; /* no owner anymore */
  conn->lastused = FUNC3(); /* it was used up until now */
  if(maxconnects > 0 &&
     FUNC1(data) > maxconnects) {
    FUNC4(data, "Connection cache is full, closing the oldest one.\n");

    conn_candidate = FUNC0(data);
    if(conn_candidate) {
      /* the winner gets the honour of being disconnected */
      (void)FUNC2(data, conn_candidate, /* dead_connection */ FALSE);
    }
  }

  return (conn_candidate == conn) ? FALSE : TRUE;

}