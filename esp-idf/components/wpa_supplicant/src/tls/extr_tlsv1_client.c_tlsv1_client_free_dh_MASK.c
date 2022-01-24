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
struct tlsv1_client {int /*<<< orphan*/ * dh_ys; int /*<<< orphan*/ * dh_g; int /*<<< orphan*/ * dh_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct tlsv1_client *conn)
{
	FUNC0(conn->dh_p);
	FUNC0(conn->dh_g);
	FUNC0(conn->dh_ys);
	conn->dh_p = conn->dh_g = conn->dh_ys = NULL;
}