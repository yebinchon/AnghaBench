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
typedef  int /*<<< orphan*/  FCEUGI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * CurGame ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EO_AUTOHIDE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int eoptions ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int isloaded ; 
 scalar_t__ soundrecfn ; 

int FUNC9(const char *path)
{
	FCEUGI *tmp;

	FUNC0();
        if(!(tmp=FUNC4(path,1)))
	 return 0;
	CurGame=tmp;
        FUNC6(tmp);
        FUNC7();

        if(!FUNC1(tmp))
         return(0);  
	if(soundrecfn)
	{
	 if(!FUNC3(soundrecfn))
	 {
 	  FUNC8(soundrecfn);
	  soundrecfn=0;
	 }
	}
	isloaded=1;
	#ifdef EXTGUI
	if(eoptions&EO_AUTOHIDE) GUI_Hide(1);
	#endif

	FUNC2();
	return 1;
}