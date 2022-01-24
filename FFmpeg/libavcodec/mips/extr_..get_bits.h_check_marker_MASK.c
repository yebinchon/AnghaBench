#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  size_in_bits; } ;
typedef  TYPE_1__ GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline int FUNC3(void *logctx, GetBitContext *s, const char *msg)
{
    int bit = FUNC1(s);
    if (!bit)
        FUNC0(logctx, AV_LOG_INFO, "Marker bit missing at %d of %d %s\n",
               FUNC2(s) - 1, s->size_in_bits, msg);

    return bit;
}