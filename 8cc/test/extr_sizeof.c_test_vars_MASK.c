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
typedef  int /*<<< orphan*/  d ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  b ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1() {
    char a[] = { 1, 2, 3 };
    FUNC0(3, sizeof(a));
    char b[] = "abc";
    FUNC0(4, sizeof(b));
    FUNC0(1, sizeof(b[0]));
    FUNC0(1, sizeof((b[0])));
    FUNC0(1, sizeof((b)[0]));
    char *c[5];
    FUNC0(40, sizeof(c));
    char *(*d)[3];
    FUNC0(8, sizeof(d));
    FUNC0(24, sizeof(*d));
    FUNC0(8, sizeof(**d));
    FUNC0(1, sizeof(***d));
    FUNC0(4, sizeof((int)a));
}