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
typedef  enum tag { ____Placeholder_tag } tag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int g1 ; 
 int g3 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2() {
    FUNC1("enum");

    FUNC0(0, g1);
    FUNC0(2, g3);

    enum { x } v;
    FUNC0(0, x);

    enum { y };
    FUNC0(0, y);

    enum tag { z };
    enum tag a = z;
    FUNC0(0, z);
    FUNC0(0, a);
}