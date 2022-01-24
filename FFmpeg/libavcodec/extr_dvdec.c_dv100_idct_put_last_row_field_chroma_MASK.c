#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* idct ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {TYPE_1__ idsp; } ;
typedef  TYPE_2__ DVVideoContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(DVVideoContext *s, uint8_t *data,
                                                 int stride, int16_t *blocks)
{
    s->idsp.idct(blocks + 0*64);
    s->idsp.idct(blocks + 1*64);

    FUNC0(blocks+0*64,       data,              stride<<1);
    FUNC0(blocks+0*64 + 4*8, data + 8,          stride<<1);
    FUNC0(blocks+1*64,       data + stride,     stride<<1);
    FUNC0(blocks+1*64 + 4*8, data + 8 + stride, stride<<1);
}