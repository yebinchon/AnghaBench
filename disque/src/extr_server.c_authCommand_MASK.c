#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int authenticated; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_11__ {int /*<<< orphan*/  requirepass; } ;
struct TYPE_10__ {int /*<<< orphan*/  ok; } ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(client *c) {
    if (!server.requirepass) {
        FUNC1(c,"Client sent AUTH, but no password is set");
    } else if (!FUNC2(c->argv[1]->ptr, server.requirepass)) {
      c->authenticated = 1;
      FUNC0(c,shared.ok);
    } else {
      c->authenticated = 0;
      FUNC1(c,"invalid password");
    }
}