#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* comp; int /*<<< orphan*/ * codsty; } ;
struct TYPE_6__ {int numXtiles; int numYtiles; int ncomponents; int /*<<< orphan*/  poc; int /*<<< orphan*/ * properties; int /*<<< orphan*/ * qntsty; int /*<<< orphan*/ * codsty; TYPE_2__* tile; } ;
typedef  TYPE_1__ Jpeg2000DecoderContext ;
typedef  TYPE_2__ Jpeg2000Component ;
typedef  int /*<<< orphan*/  Jpeg2000CodingStyle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(Jpeg2000DecoderContext *s)
{
    int tileno, compno;
    for (tileno = 0; tileno < s->numXtiles * s->numYtiles; tileno++) {
        if (s->tile[tileno].comp) {
            for (compno = 0; compno < s->ncomponents; compno++) {
                Jpeg2000Component *comp     = s->tile[tileno].comp   + compno;
                Jpeg2000CodingStyle *codsty = s->tile[tileno].codsty + compno;

                FUNC1(comp, codsty);
            }
            FUNC0(&s->tile[tileno].comp);
        }
    }
    FUNC0(&s->tile);
    FUNC2(s->codsty, 0, sizeof(s->codsty));
    FUNC2(s->qntsty, 0, sizeof(s->qntsty));
    FUNC2(s->properties, 0, sizeof(s->properties));
    FUNC2(&s->poc  , 0, sizeof(s->poc));
    s->numXtiles = s->numYtiles = 0;
    s->ncomponents = 0;
}