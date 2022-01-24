#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ keepSizeBefore; scalar_t__ keepSizeAfter; scalar_t__ blockSize; unsigned char* bufferBase; scalar_t__ directInput; } ;
struct TYPE_8__ {scalar_t__ (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef  TYPE_1__ ISzAlloc ;
typedef  TYPE_2__ CMatchFinder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,size_t) ; 

__attribute__((used)) static int FUNC2(CMatchFinder *p, uint32_t keepSizeReserv, ISzAlloc *alloc)
{
  uint32_t blockSize = p->keepSizeBefore + p->keepSizeAfter + keepSizeReserv;
  if (p->directInput)
  {
    p->blockSize = blockSize;
    return 1;
  }
  if (!p->bufferBase || p->blockSize != blockSize)
  {
    FUNC0(p, alloc);
    p->blockSize = blockSize;
    p->bufferBase = (unsigned char*)alloc->Alloc(alloc, (size_t)blockSize);
  }
  return (p->bufferBase != NULL);
}