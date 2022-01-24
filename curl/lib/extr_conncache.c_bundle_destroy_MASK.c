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
struct connectbundle {int /*<<< orphan*/  conn_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct connectbundle*) ; 

__attribute__((used)) static void FUNC2(struct connectbundle *cb_ptr)
{
  if(!cb_ptr)
    return;

  FUNC0(&cb_ptr->conn_list, NULL);

  FUNC1(cb_ptr);
}