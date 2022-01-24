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
struct http_connection_t {struct http_connection_t* useragentcopy; struct http_connection_t* postdatacopy; struct http_connection_t* contenttypecopy; struct http_connection_t* methodcopy; struct http_connection_t* urlcopy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct http_connection_t*) ; 

void FUNC1(struct http_connection_t *conn)
{
   if (!conn)
      return;

   if (conn->urlcopy)
      FUNC0(conn->urlcopy);

   if (conn->methodcopy)
      FUNC0(conn->methodcopy);

   if (conn->contenttypecopy)
      FUNC0(conn->contenttypecopy);

   if (conn->postdatacopy)
      FUNC0(conn->postdatacopy);

   if (conn->useragentcopy)
      FUNC0(conn->useragentcopy);

   conn->urlcopy         = NULL;
   conn->methodcopy      = NULL;
   conn->contenttypecopy = NULL;
   conn->postdatacopy    = NULL;
   conn->useragentcopy   = NULL;

   FUNC0(conn);
}