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
 int FUNC0 (int,int,int) ; 

int FUNC1( int year, int month, int day ) {
    /* The UNIX Epoch(1 Jan 1970) was a Thursday */
    return ( 4 + FUNC0( year, month, day ) ) % 7;
}