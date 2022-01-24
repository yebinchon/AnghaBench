#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  server; int /*<<< orphan*/  domain; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ socket_target_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(void *data, socket_target_t *in_addr)
{
   struct sockaddr_in *out_target = (struct sockaddr_in*)data;

   out_target->sin_port   = FUNC2(in_addr->port);
   out_target->sin_family = FUNC0(in_addr->domain);
#ifdef VITA
   out_target->sin_addr   = inet_aton(in_addr->server);
#else
#ifdef GEKKO
   out_target->sin_len    = 8;
#endif

   FUNC3(AF_INET, in_addr->server, &out_target->sin_addr);

#endif
}