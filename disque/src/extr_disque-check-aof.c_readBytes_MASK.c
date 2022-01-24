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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long,long) ; 
 int /*<<< orphan*/  epos ; 
 long FUNC1 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(FILE *fp, char *target, long length) {
    long real;
    epos = FUNC2(fp);
    real = FUNC1(target,1,length,fp);
    if (real != length) {
        FUNC0("Expected to read %ld bytes, got %ld bytes",length,real);
        return 0;
    }
    return 1;
}