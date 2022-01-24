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
struct TYPE_2__ {scalar_t__ ssl; } ;
struct http_connection_t {char* location; char* scan; int port; TYPE_1__ sock_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char**,int) ; 

bool FUNC2(struct http_connection_t *conn)
{
   char **location = NULL;

   if (!conn)
      return false;

   location     = &conn->location;

   if (*conn->scan == '\0')
      return false;
   *conn->scan  = '\0';

   if (conn->port == 0)
   {
      if (conn->sock_state.ssl)
         conn->port   = 443;
      else
         conn->port   = 80;
   }

   if (*conn->scan == ':')
   {
      if (!FUNC0((int)conn->scan[1]))
         return false;

      conn->port = (int)FUNC1(conn->scan + 1, &conn->scan, 10);

      if (*conn->scan != '/')
         return false;
   }

   *location = conn->scan + 1;

   return true;
}