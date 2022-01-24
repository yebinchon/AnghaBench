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
struct TYPE_5__ {int codec; } ;
typedef  TYPE_1__ hb_encoder_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*) ; 

const hb_encoder_t*
FUNC2(const char *name)
{
    // First find an enabled encoder
    int codec = FUNC0(name);

    // Now find the matching encoder info
    const hb_encoder_t *enc, *first;
    for (first = enc = FUNC1(NULL); enc != NULL;
         enc = FUNC1(enc))
    {
        if (codec == enc->codec)
        {
            return enc;
        }
    }
    // Return a default encoder if nothing matches
    return first;
}