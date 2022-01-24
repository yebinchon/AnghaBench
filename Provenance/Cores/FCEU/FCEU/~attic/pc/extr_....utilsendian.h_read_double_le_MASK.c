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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  EMUFILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 

inline int FUNC2(double *Bufo, EMUFILE*is) { uint64 temp; int ret = FUNC0(&temp,is); *Bufo = FUNC1(temp); return ret; }