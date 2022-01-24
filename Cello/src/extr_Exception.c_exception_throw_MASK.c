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
typedef  int /*<<< orphan*/ * var ;
struct Exception {int /*<<< orphan*/  msg; int /*<<< orphan*/ * obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  Exception ; 
 int /*<<< orphan*/ * FUNC0 (struct Exception*) ; 
 int /*<<< orphan*/  FUNC1 (struct Exception*) ; 
 int FUNC2 (struct Exception*) ; 
 struct Exception* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

var FUNC6(var obj, const char* fmt, var args) {

  struct Exception* e = FUNC3(Exception);
  
  e->obj = obj;
  FUNC5(e->msg, 0, fmt, args);
  
  if (FUNC2(e) >= 1) {
    FUNC4(*FUNC0(e), 1);
  } else {
    FUNC1(e);
  }
  
  return NULL;
  
}