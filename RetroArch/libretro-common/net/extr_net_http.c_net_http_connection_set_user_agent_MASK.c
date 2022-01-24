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
struct http_connection_t {int /*<<< orphan*/ * useragentcopy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

void FUNC2(struct http_connection_t* conn, const char* user_agent)
{
   if (conn->useragentcopy)
      FUNC0(conn->useragentcopy);

   conn->useragentcopy = user_agent ? FUNC1(user_agent) : NULL;
}