#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ctl_socket; } ;
struct TYPE_7__ {TYPE_1__ conn; } ;
typedef  TYPE_2__ rsound_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(rsound_t *rd)
{
   FUNC0(rd != NULL);
   FUNC3(rd);

   const char buf[] = "RSD    5 STOP";

   // Do not really care about errors here.
   // The socket will be closed down in any case in rsnd_reset().
   FUNC2(rd->conn.ctl_socket, buf, FUNC4(buf), 0);

   FUNC1(rd);
   return 0;
}