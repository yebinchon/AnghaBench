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
struct TYPE_3__ {char* z; int /*<<< orphan*/  type; int /*<<< orphan*/  n; } ;
typedef  TYPE_1__ SSQLToken ;

/* Variables and functions */
 int /*<<< orphan*/  TK_STRING ; 
 int /*<<< orphan*/ * TS_PATH_DELIMITER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

SSQLToken FUNC3(char* meterId, char* name) {
  char* r = FUNC1(meterId, TS_PATH_DELIMITER[0], 1);
  FUNC0(name, r, TS_PATH_DELIMITER[0]);

  SSQLToken token = {.z = name, .n = FUNC2(name), .type = TK_STRING};
  return token;
}