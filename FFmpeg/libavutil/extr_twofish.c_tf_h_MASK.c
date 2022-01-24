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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int /*<<< orphan*/ ) ; 
 size_t* MD1 ; 
 size_t* MD2 ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint32_t FUNC3(uint32_t X, uint32_t L[4], int k)
{
    uint8_t y[4], l[4];
    FUNC1(y, X);
    FUNC2(y, L, k);

    l[0] = y[0] ^ MD2[y[1]] ^ MD1[y[2]] ^ MD1[y[3]];
    l[1] = MD1[y[0]] ^ MD2[y[1]] ^ MD2[y[2]] ^ y[3];
    l[2] = MD2[y[0]] ^ MD1[y[1]] ^ y[2] ^ MD2[y[3]];
    l[3] = MD2[y[0]] ^ y[1] ^ MD2[y[2]] ^ MD1[y[3]];

    return FUNC0(l);
}