#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int needInit; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  scalar_t__ CLzmaEncHandle ;
typedef  TYPE_1__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char const*,size_t) ; 

SRes FUNC2(CLzmaEncHandle pp, const unsigned char *src, size_t srcLen,
    uint32_t keepWindowSize, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  FUNC1(p, src, srcLen);
  p->needInit = 1;

  return FUNC0(p, keepWindowSize, alloc, allocBig);
}