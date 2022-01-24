#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char a; char b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char) ; 
 TYPE_1__ inittest ; 

__attribute__((used)) static void FUNC1() {
    FUNC0(2, inittest.a);
    FUNC0(4, inittest.b);

    struct { char a:4; char b:4; } x = { 2, 4 };
    FUNC0(2, x.a);
    FUNC0(4, x.b);
}