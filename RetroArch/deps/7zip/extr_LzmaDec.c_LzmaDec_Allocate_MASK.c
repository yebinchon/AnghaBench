#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_16__ {size_t dicSize; } ;
struct TYPE_17__ {size_t dicBufSize; TYPE_2__ prop; int /*<<< orphan*/ * dic; } ;
struct TYPE_15__ {scalar_t__ (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ ISzAlloc ;
typedef  TYPE_2__ CLzmaProps ;
typedef  TYPE_3__ CLzmaDec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 
 scalar_t__ FUNC5 (TYPE_1__*,size_t) ; 

SRes FUNC6(CLzmaDec *p, const uint8_t *props, unsigned propsSize, ISzAlloc *alloc)
{
   CLzmaProps propNew;
   size_t dicBufSize;
   FUNC4(FUNC3(&propNew, props, propsSize));
   FUNC4(FUNC0(p, &propNew, alloc));
   dicBufSize = propNew.dicSize;
   if (p->dic == 0 || dicBufSize != p->dicBufSize)
   {
      FUNC1(p, alloc);
      p->dic = (uint8_t *)alloc->Alloc(alloc, dicBufSize);
      if (p->dic == 0)
      {
         FUNC2(p, alloc);
         return SZ_ERROR_MEM;
      }
   }
   p->dicBufSize = dicBufSize;
   p->prop = propNew;
   return SZ_OK;
}