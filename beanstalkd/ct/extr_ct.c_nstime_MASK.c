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
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef  int int64 ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int Second ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 

__attribute__((used)) static int64
FUNC1()
{
    struct timespec t;
    FUNC0(CLOCK_MONOTONIC, &t);
    return (int64)(t.tv_sec)*Second + t.tv_nsec;
}