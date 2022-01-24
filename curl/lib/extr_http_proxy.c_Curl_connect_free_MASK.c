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
struct http_connect_state {int dummy; } ;
struct connectdata {struct http_connect_state* connect_state; } ;
struct Curl_easy {struct connectdata* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct http_connect_state*) ; 

void FUNC1(struct Curl_easy *data)
{
  struct connectdata *conn = data->conn;
  struct http_connect_state *s = conn->connect_state;
  if(s) {
    FUNC0(s);
    conn->connect_state = NULL;
  }
}