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
struct sbg_timestamp {char type; scalar_t__ t; } ;
struct sbg_parser {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ FUNC0 (struct sbg_parser*,char) ; 
 scalar_t__ FUNC1 (struct sbg_parser*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbg_parser*) ; 
 int FUNC3 (struct sbg_parser*,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct sbg_parser *p,
                               struct sbg_timestamp *rts, int64_t *rrel)
{
    int64_t abs = 0, rel = 0, dt;
    char type = 0;
    int r;

    if (FUNC1(p, "NOW", 3)) {
        type = 'N';
        r = 1;
    } else {
        r = FUNC3(p, &abs);
        if (r)
            type = 'T';
    }
    while (FUNC0(p, '+')) {
        if (!FUNC3(p, &dt))
            return AVERROR_INVALIDDATA;
        rel += dt;
        r = 1;
    }
    if (r) {
        if (!FUNC2(p))
            return AVERROR_INVALIDDATA;
        rts->type = type;
        rts->t    = abs;
        *rrel     = rel;
    }
    return r;
}