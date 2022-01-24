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
typedef  int /*<<< orphan*/  socket_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  kernproc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,void*,int /*<<< orphan*/ ) ; 

errno_t
FUNC1(socket_t sock, unsigned long request, void *argp)
{
	return (FUNC0(sock, request, argp, kernproc)); /* will lock socket */
}