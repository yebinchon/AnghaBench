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
struct TYPE_3__ {int* k; int* c; int* d; } ;
typedef  TYPE_1__ key_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(key_set key_set) {
  int i;
  FUNC1("K: \n");
  for (i = 0; i < 8; i++) {
    FUNC1("%02X : ", key_set.k[i]);
    FUNC0(key_set.k[i]);
    FUNC1("\n");
  }
  FUNC1("\nC: \n");

  for (i = 0; i < 4; i++) {
    FUNC1("%02X : ", key_set.c[i]);
    FUNC0(key_set.c[i]);
    FUNC1("\n");
  }
  FUNC1("\nD: \n");

  for (i = 0; i < 4; i++) {
    FUNC1("%02X : ", key_set.d[i]);
    FUNC0(key_set.d[i]);
    FUNC1("\n");
  }
  FUNC1("\n");
}