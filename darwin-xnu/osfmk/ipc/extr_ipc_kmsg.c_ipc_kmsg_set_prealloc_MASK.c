#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  TYPE_1__* ipc_kmsg_t ;
struct TYPE_4__ {scalar_t__ ikm_prealloc; scalar_t__ ikm_turnstile; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(
	ipc_kmsg_t		kmsg,
	ipc_port_t		port)
{
	FUNC1(kmsg->ikm_prealloc == IP_NULL);
  
	kmsg->ikm_prealloc = IP_NULL;

	FUNC1(FUNC2(port) == TURNSTILE_NULL);
	kmsg->ikm_turnstile = TURNSTILE_NULL;
	FUNC0(port, kmsg);
}