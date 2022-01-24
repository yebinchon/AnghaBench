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
struct TYPE_3__ {char* meterId; } ;
typedef  TYPE_1__ SMeterObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2(SMeterObj *pObj, char *db) {
  char *st = FUNC1(pObj->meterId, ".");
  char *end = FUNC1(st + 1, ".");

  FUNC0(db, st + 1, end - (st + 1));
}