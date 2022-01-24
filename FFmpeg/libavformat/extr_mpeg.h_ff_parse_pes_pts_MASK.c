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
typedef  int uint8_t ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int const*) ; 

__attribute__((used)) static inline int64_t FUNC1(const uint8_t *buf) {
    return (int64_t)(*buf & 0x0e) << 29 |
            (FUNC0(buf+1) >> 1) << 15 |
             FUNC0(buf+3) >> 1;
}