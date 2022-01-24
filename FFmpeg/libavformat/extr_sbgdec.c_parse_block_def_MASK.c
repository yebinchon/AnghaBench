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
struct sbg_script_definition {char type; int elements; int nb_elements; } ;
struct sbg_parser {int nb_block_tseq; } ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (struct sbg_parser*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct sbg_parser*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbg_parser*) ; 
 int FUNC3 (struct sbg_parser*,int) ; 

__attribute__((used)) static int FUNC4(struct sbg_parser *p,
                           struct sbg_script_definition *def)
{
    int r, tseq;

    FUNC2(p);
    if (!FUNC1(p))
        return AVERROR_INVALIDDATA;
    tseq = p->nb_block_tseq;
    while (1) {
        r = FUNC3(p, 1);
        if (r < 0)
            return r;
        if (!r)
            break;
    }
    if (!FUNC0(p, '}'))
        return AVERROR_INVALIDDATA;
    FUNC2(p);
    if (!FUNC1(p))
        return AVERROR_INVALIDDATA;
    def->type        = 'B';
    def->elements    = tseq;
    def->nb_elements = p->nb_block_tseq - tseq;
    if (!def->nb_elements)
        return AVERROR_INVALIDDATA;
    return 1;
}