#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fastMode; } ;
typedef  TYPE_1__ FSE_DTableHeader ;
typedef  int /*<<< orphan*/  FSE_DTable ;
typedef  int /*<<< orphan*/  DTableH ;

/* Variables and functions */
 size_t FUNC0 (void*,size_t,void const*,size_t,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static size_t FUNC2(void* dst, size_t originalSize,
                            const void* cSrc, size_t cSrcSize,
                            const FSE_DTable* dt)
{
    FSE_DTableHeader DTableH;
    FUNC1(&DTableH, dt, sizeof(DTableH));   /* memcpy() into local variable, to avoid strict aliasing warning */

    /* select fast mode (static) */
    if (DTableH.fastMode) return FUNC0(dst, originalSize, cSrc, cSrcSize, dt, 1);
    return FUNC0(dst, originalSize, cSrc, cSrcSize, dt, 0);
}