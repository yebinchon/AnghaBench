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
typedef  int uint32_t ;
typedef  enum DiracParseCodes { ____Placeholder_DiracParseCodes } DiracParseCodes ;
struct TYPE_9__ {scalar_t__ buf; } ;
struct TYPE_8__ {int next_parse_offset; int last_parse_code; TYPE_2__ pb; } ;
typedef  TYPE_1__ VC2EncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int DIRAC_PCODE_END_SEQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(VC2EncContext *s, enum DiracParseCodes pcode)
{
    uint32_t cur_pos, dist;

    FUNC1(&s->pb);

    cur_pos = FUNC5(&s->pb) >> 3;

    /* Magic string */
    FUNC2(&s->pb, "BBCD", 0);

    /* Parse code */
    FUNC3(&s->pb, 8, pcode);

    /* Next parse offset */
    dist = cur_pos - s->next_parse_offset;
    FUNC0(s->pb.buf + s->next_parse_offset + 5, dist);
    s->next_parse_offset = cur_pos;
    FUNC4(&s->pb, pcode == DIRAC_PCODE_END_SEQ ? 13 : 0);

    /* Last parse offset */
    FUNC4(&s->pb, s->last_parse_code == DIRAC_PCODE_END_SEQ ? 13 : dist);

    s->last_parse_code = pcode;
}