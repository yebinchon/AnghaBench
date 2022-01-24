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
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char,int) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(FFTextReader *tr, AVBPrint *buf, char *c)
{
    int i = 0;
    char end_chr;

    if (!*c) // cached char?
        *c = FUNC1(tr);
    if (!*c)
        return 0;

    end_chr = *c == '<' ? '>' : '<';
    do {
        FUNC0(buf, *c, 1);
        *c = FUNC1(tr);
        i++;
    } while (*c != end_chr && *c);
    if (end_chr == '>') {
        FUNC0(buf, '>', 1);
        *c = 0;
    }
    return i;
}