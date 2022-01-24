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
 int /*<<< orphan*/  FUNC0 (char,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2() {
    FUNC0('$', L'\u0024');
    FUNC0('$', L'\U00000024');
    FUNC1("$", "\u0024");
    FUNC1("$", "\U00000024");
    FUNC0('X', L'X');
    FUNC0('X', U'X');
    FUNC0('X', u'X');
}