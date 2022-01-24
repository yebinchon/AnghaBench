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
 int /*<<< orphan*/  FUNC0 (int,char) ; 

__attribute__((used)) static void FUNC1() {
    FUNC0(65, 'A');
    FUNC0(97, 'a');
    FUNC0(7, '\a');
    FUNC0(8, '\b');
    FUNC0(12, '\f');
    FUNC0(10, '\n');
    FUNC0(13, '\r');
    FUNC0(9, '\t');
    FUNC0(11, '\v');
    FUNC0(27, '\e');

    FUNC0(0, '\0');
    FUNC0(7, '\7');
    FUNC0(15, '\17');
    FUNC0(-99, '\235');

    FUNC0(0, '\x0');
    FUNC0(-1, '\xff');
    FUNC0(15, '\xF');
    FUNC0(18, '\x012');
}