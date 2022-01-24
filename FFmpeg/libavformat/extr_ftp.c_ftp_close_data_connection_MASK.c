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
struct TYPE_3__ {int /*<<< orphan*/  state; scalar_t__ position; int /*<<< orphan*/  conn_data; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(FTPContext *s)
{
    FUNC0(&s->conn_data);
    s->position = 0;
    s->state = DISCONNECTED;
}