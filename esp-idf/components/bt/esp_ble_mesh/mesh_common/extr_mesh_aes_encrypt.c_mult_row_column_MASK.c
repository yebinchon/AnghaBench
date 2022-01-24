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

/* Variables and functions */
 int const FUNC0 (int const) ; 
 int const FUNC1 (int const) ; 

__attribute__((used)) static inline void FUNC2(uint8_t *out, const uint8_t *in)
{
    out[0] = FUNC0(in[0]) ^ FUNC1(in[1]) ^ in[2] ^ in[3];
    out[1] = in[0] ^ FUNC0(in[1]) ^ FUNC1(in[2]) ^ in[3];
    out[2] = in[0] ^ in[1] ^ FUNC0(in[2]) ^ FUNC1(in[3]);
    out[3] = FUNC1(in[0]) ^ in[1] ^ in[2] ^ FUNC0(in[3]);
}