#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int defaultvalue; int* location; char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  defaultfile ; 
 TYPE_1__* defaults ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int numdefaults ; 

void FUNC3 (void)
{
    int		i;
    int		v;
    FILE*	f;
	
    f = FUNC1 (defaultfile, "w");
    if (!f)
	return; // can't write the file, but don't complain
		
    for (i=0 ; i<numdefaults ; i++)
    {
	if (defaults[i].defaultvalue > -0xfff
	    && defaults[i].defaultvalue < 0xfff)
	{
	    v = *defaults[i].location;
	    FUNC2 (f,"%s\t\t%i\n",defaults[i].name,v);
	} else {
	    FUNC2 (f,"%s\t\t\"%s\"\n",defaults[i].name,
		     * (char **) (defaults[i].location));
	}
    }
	
    FUNC0 (f);
}