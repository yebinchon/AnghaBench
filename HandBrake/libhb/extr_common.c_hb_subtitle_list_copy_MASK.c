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
typedef  int /*<<< orphan*/  hb_subtitle_t ;
typedef  int /*<<< orphan*/  hb_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

hb_list_t *FUNC5(const hb_list_t *src)
{
    hb_list_t *list = FUNC2();
    hb_subtitle_t *subtitle = NULL;
    int i;

    if( src )
    {
        for( i = 0; i < FUNC1(src); i++ )
        {
            if( ( subtitle = FUNC3( src, i ) ) )
            {
                FUNC0( list, FUNC4(subtitle) );
            }
        }
    }
    return list;
}