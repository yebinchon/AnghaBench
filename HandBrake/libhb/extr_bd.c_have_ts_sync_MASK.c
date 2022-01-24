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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(const uint8_t *buf, int psize)
{
    return FUNC0(&buf[0*psize]) && FUNC0(&buf[1*psize]) &&
           FUNC0(&buf[2*psize]) && FUNC0(&buf[3*psize]) &&
           FUNC0(&buf[4*psize]) && FUNC0(&buf[5*psize]) &&
           FUNC0(&buf[6*psize]) && FUNC0(&buf[7*psize]);
}