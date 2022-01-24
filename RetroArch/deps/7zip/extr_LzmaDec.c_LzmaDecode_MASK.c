#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {size_t dicBufSize; size_t dicPos; int /*<<< orphan*/ * dic; } ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  scalar_t__ ELzmaStatus ;
typedef  int /*<<< orphan*/  ELzmaFinishMode ;
typedef  TYPE_1__ CLzmaDec ;

/* Variables and functions */
 scalar_t__ LZMA_STATUS_NEEDS_MORE_INPUT ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t,int /*<<< orphan*/  const*,size_t*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 size_t RC_INIT_SIZE ; 
 scalar_t__ SZ_ERROR_INPUT_EOF ; 
 scalar_t__ SZ_OK ; 

SRes FUNC5(uint8_t *dest, size_t *destLen, const uint8_t *src, size_t *srcLen,
      const uint8_t *propData, unsigned propSize, ELzmaFinishMode finishMode,
      ELzmaStatus *status, ISzAlloc *alloc)
{
   CLzmaDec p;
   SRes res;
   size_t inSize = *srcLen;
   size_t outSize = *destLen;
   *srcLen = *destLen = 0;
   if (inSize < RC_INIT_SIZE)
      return SZ_ERROR_INPUT_EOF;

   FUNC1(&p);
   res = FUNC0(&p, propData, propSize, alloc);
   if (res != 0)
      return res;
   p.dic = dest;
   p.dicBufSize = outSize;

   FUNC4(&p);

   *srcLen = inSize;
   res = FUNC2(&p, outSize, src, srcLen, finishMode, status);

   if (res == SZ_OK && *status == LZMA_STATUS_NEEDS_MORE_INPUT)
      res = SZ_ERROR_INPUT_EOF;

   (*destLen) = p.dicPos;
   FUNC3(&p, alloc);
   return res;
}