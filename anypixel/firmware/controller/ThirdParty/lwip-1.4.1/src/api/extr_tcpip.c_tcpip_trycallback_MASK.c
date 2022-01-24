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
struct tcpip_callback_msg {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_VAL ; 
 int /*<<< orphan*/  mbox ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tcpip_callback_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

err_t
FUNC2(struct tcpip_callback_msg* msg)
{
  if (!FUNC1(&mbox)) {
    return ERR_VAL;
  }
  return FUNC0(&mbox, msg);
}