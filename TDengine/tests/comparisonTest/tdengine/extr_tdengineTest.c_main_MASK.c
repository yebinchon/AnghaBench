#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ writeClients; } ;
struct TYPE_3__ {scalar_t__ totalRows; } ;

/* Variables and functions */
 TYPE_2__ arguments ; 
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ statis ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(int argc, char *argv[]) {
  statis.totalRows = 0;
  FUNC0(argc, argv);

  if (arguments.writeClients > 0) {
    FUNC2();
  } else {
    FUNC1();
  }
}