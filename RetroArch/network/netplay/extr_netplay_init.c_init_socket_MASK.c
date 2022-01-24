#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {scalar_t__ nat_traversal; scalar_t__ is_server; } ;
typedef  TYPE_1__ netplay_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(netplay_t *netplay, void *direct_host,
      const char *server, uint16_t port)
{
   if (!FUNC2())
      return false;

   if (!FUNC0(netplay, direct_host, server, port))
      return false;

   if (netplay->is_server && netplay->nat_traversal)
      FUNC1(netplay);

   return true;
}