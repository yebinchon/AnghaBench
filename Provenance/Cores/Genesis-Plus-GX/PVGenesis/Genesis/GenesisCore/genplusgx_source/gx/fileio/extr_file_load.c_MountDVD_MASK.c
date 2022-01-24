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
struct TYPE_3__ {int /*<<< orphan*/  (* isInserted ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* dvd ; 
 int dvd_mounted ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(void)
{
  FUNC1("Information", "Mounting DVD ...",1);

  /* check if DVD is already mounted */
  if (dvd_mounted)
  {
		/* unmount DVD */
    FUNC4("dvd:");
    dvd_mounted = 0;
  }

  /* check if disc is found */
  if(!dvd->isInserted())
  {
    FUNC2("Error","No Disc inserted !");
    return 0;
  }
		
  /* mount DVD */
  if(!FUNC3("dvd",dvd))
  {
    FUNC2("Error","Disc can not be read !");
    return 0;
  }

  /* DVD is mounted */
  dvd_mounted = 1;

  FUNC0();
  return 1;
}