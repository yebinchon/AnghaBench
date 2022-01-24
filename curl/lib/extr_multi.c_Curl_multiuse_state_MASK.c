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
struct connectdata {int multiuse; struct connectdata* multi; struct connectdata* data; struct connectdata* bundle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*) ; 

void FUNC2(struct connectdata *conn,
                         int bundlestate) /* use BUNDLE_* defines */
{
  FUNC0(conn);
  FUNC0(conn->bundle);
  FUNC0(conn->data);
  FUNC0(conn->data->multi);

  conn->bundle->multiuse = bundlestate;
  FUNC1(conn->data->multi);
}