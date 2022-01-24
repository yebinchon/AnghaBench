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
struct TYPE_7__ {int /*<<< orphan*/  priv_data; TYPE_1__* parser; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* parser_close ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ AVCodecParserContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(AVCodecParserContext *s)
{
    if (s) {
        if (s->parser->parser_close)
            s->parser->parser_close(s);
        FUNC1(&s->priv_data);
        FUNC0(s);
    }
}