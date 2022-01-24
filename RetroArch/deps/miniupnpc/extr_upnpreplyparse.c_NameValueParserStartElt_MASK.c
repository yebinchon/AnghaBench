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
struct NameValueParserData {int topelt; char* curelt; scalar_t__ cdatalen; int /*<<< orphan*/ * cdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC1(void * d, const char * name, int l)
{
	struct NameValueParserData * data = (struct NameValueParserData *)d;
	data->topelt = 1;
    if(l>63)
        l = 63;
    FUNC0(data->curelt, name, l);
    data->curelt[l] = '\0';
	data->cdata = NULL;
	data->cdatalen = 0;
}