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
struct TYPE_7__ {scalar_t__ title; } ;
typedef  TYPE_1__ hb_chapter_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

hb_chapter_t *FUNC3(const hb_chapter_t *src)
{
    hb_chapter_t *chap = NULL;

    if ( src )
    {
        chap = FUNC0( 1, sizeof(*chap) );
        FUNC1( chap, src, sizeof(*chap) );
        if ( src->title )
        {
            chap->title = FUNC2( src->title );
        }
    }
    return chap;
}