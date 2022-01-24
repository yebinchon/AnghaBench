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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

int FUNC3(int ar, int map) {
  if(map>=0) {
    FUNC0("add %s,%s,%s lsl #2\n",regname[ar],regname[ar],regname[map]);
    FUNC1(0xe0800100|FUNC2(ar,ar,map));
  }
}