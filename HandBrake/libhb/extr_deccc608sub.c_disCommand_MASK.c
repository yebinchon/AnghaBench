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
struct s_write {int /*<<< orphan*/  new_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,struct s_write*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned char,struct s_write*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,unsigned char,struct s_write*) ; 
 int FUNC3 (unsigned char,unsigned char,struct s_write*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,unsigned char,struct s_write*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,unsigned char,struct s_write*) ; 

__attribute__((used)) static int FUNC6(unsigned char hi, unsigned char lo, struct s_write *wb)
{
    int wrote_to_screen=0;

    /* Full channel changes are only allowed for "GLOBAL CODES",
    * "OTHER POSITIONING CODES", "BACKGROUND COLOR CODES",
    * "MID-ROW CODES".
    * "PREAMBLE ACCESS CODES", "BACKGROUND COLOR CODES" and
    * SPECIAL/SPECIAL CHARACTERS allow only switching
    * between 1&3 or 2&4. */
    wb->new_channel = FUNC0 (hi,wb);
    //if (wb->data608->channel!=cc_channel)
    //    continue;

    if (hi>=0x18 && hi<=0x1f)
        hi=hi-8;

    switch (hi)
    {
        case 0x10:
            if (lo>=0x40 && lo<=0x5f)
                FUNC4 (hi,lo,wb);
            break;
        case 0x11:
            if (lo>=0x20 && lo<=0x2f)
                FUNC5 (hi,lo,wb);
            if (lo>=0x30 && lo<=0x3f)
            {
                wrote_to_screen=1;
                FUNC2 (hi,lo,wb);
            }
            if (lo>=0x40 && lo<=0x7f)
                FUNC4 (hi,lo,wb);
            break;
        case 0x12:
        case 0x13:
            if (lo>=0x20 && lo<=0x3f)
            {
                wrote_to_screen=FUNC3 (hi,lo,wb);
            }
            if (lo>=0x40 && lo<=0x7f)
                FUNC4 (hi,lo,wb);
            break;
        case 0x14:
        case 0x15:
            if (lo>=0x20 && lo<=0x2f)
                FUNC1 (hi,lo,wb);
            if (lo>=0x40 && lo<=0x7f)
                FUNC4 (hi,lo,wb);
            break;
        case 0x16:
            if (lo>=0x40 && lo<=0x7f)
                FUNC4 (hi,lo,wb);
            break;
        case 0x17:
            if (lo>=0x21 && lo<=0x23)
                FUNC1 (hi,lo,wb);
            if (lo>=0x2e && lo<=0x2f)
                FUNC5 (hi,lo,wb);
            if (lo>=0x40 && lo<=0x7f)
                FUNC4 (hi,lo,wb);
            break;
    }
    return wrote_to_screen;
}