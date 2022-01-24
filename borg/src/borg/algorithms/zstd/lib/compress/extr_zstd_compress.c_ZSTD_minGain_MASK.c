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
typedef  scalar_t__ strat ;
typedef  int ZSTD_strategy ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZSTD_btultra ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZSTD_c_strategy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC3(size_t srcSize, ZSTD_strategy strat)
{
    U32 const minlog = (strat>=ZSTD_btultra) ? (U32)(strat) - 1 : 6;
    FUNC0(ZSTD_btultra == 8);
    FUNC2(FUNC1(ZSTD_c_strategy, strat));
    return (srcSize >> minlog) + 2;
}