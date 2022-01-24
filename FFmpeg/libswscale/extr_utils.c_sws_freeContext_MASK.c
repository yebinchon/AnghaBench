#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  inv_gamma; int /*<<< orphan*/  gamma; int /*<<< orphan*/ * cascaded1_tmp; int /*<<< orphan*/ * cascaded_tmp; struct TYPE_8__** cascaded_context; int /*<<< orphan*/  formatConvBuffer; int /*<<< orphan*/  yuvTable; struct TYPE_8__* chrMmxextFilterCode; struct TYPE_8__* lumMmxextFilterCode; int /*<<< orphan*/  chrMmxextFilterCodeSize; int /*<<< orphan*/  lumMmxextFilterCodeSize; int /*<<< orphan*/  hChrFilterPos; int /*<<< orphan*/  hLumFilterPos; int /*<<< orphan*/  vChrFilterPos; int /*<<< orphan*/  vLumFilterPos; int /*<<< orphan*/  vCCoeffsBank; int /*<<< orphan*/  vYCoeffsBank; int /*<<< orphan*/  hChrFilter; int /*<<< orphan*/  hLumFilter; int /*<<< orphan*/  vChrFilter; int /*<<< orphan*/  vLumFilter; int /*<<< orphan*/ * dither_error; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC6(SwsContext *c)
{
    int i;
    if (!c)
        return;

    for (i = 0; i < 4; i++)
        FUNC2(&c->dither_error[i]);

    FUNC2(&c->vLumFilter);
    FUNC2(&c->vChrFilter);
    FUNC2(&c->hLumFilter);
    FUNC2(&c->hChrFilter);
#if HAVE_ALTIVEC
    av_freep(&c->vYCoeffsBank);
    av_freep(&c->vCCoeffsBank);
#endif

    FUNC2(&c->vLumFilterPos);
    FUNC2(&c->vChrFilterPos);
    FUNC2(&c->hLumFilterPos);
    FUNC2(&c->hChrFilterPos);

#if HAVE_MMX_INLINE
#if USE_MMAP
    if (c->lumMmxextFilterCode)
        munmap(c->lumMmxextFilterCode, c->lumMmxextFilterCodeSize);
    if (c->chrMmxextFilterCode)
        munmap(c->chrMmxextFilterCode, c->chrMmxextFilterCodeSize);
#elif HAVE_VIRTUALALLOC
    if (c->lumMmxextFilterCode)
        VirtualFree(c->lumMmxextFilterCode, 0, MEM_RELEASE);
    if (c->chrMmxextFilterCode)
        VirtualFree(c->chrMmxextFilterCode, 0, MEM_RELEASE);
#else
    av_free(c->lumMmxextFilterCode);
    av_free(c->chrMmxextFilterCode);
#endif
    c->lumMmxextFilterCode = NULL;
    c->chrMmxextFilterCode = NULL;
#endif /* HAVE_MMX_INLINE */

    FUNC2(&c->yuvTable);
    FUNC2(&c->formatConvBuffer);

    FUNC6(c->cascaded_context[0]);
    FUNC6(c->cascaded_context[1]);
    FUNC6(c->cascaded_context[2]);
    FUNC4(c->cascaded_context, 0, sizeof(c->cascaded_context));
    FUNC2(&c->cascaded_tmp[0]);
    FUNC2(&c->cascaded1_tmp[0]);

    FUNC2(&c->gamma);
    FUNC2(&c->inv_gamma);

    FUNC3(c);

    FUNC1(c);
}