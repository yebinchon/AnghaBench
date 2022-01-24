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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXARGVS ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char**,int /*<<< orphan*/ ,int) ; 
 int myargc ; 
 char** myargv ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void FUNC9 (void)
{
    int             i;
#define MAXARGVS        100
	
    for (i = 1;i < myargc;i++)
	if (myargv[i][0] == '@')
	{
	    FILE *          handle;
	    int             size;
	    int             k;
	    int             index;
	    int             indexinfile;
	    char    *infile;
	    char    *file;
	    char    *moreargs[20];
	    char    *firstargv;
			
	    // READ THE RESPONSE FILE INTO MEMORY
	    handle = FUNC2 (&myargv[i][1],"rb");
	    if (!handle)
	    {
		FUNC8 ("\nNo such response file!");
		FUNC0(1);
	    }
	    FUNC8("Found response file %s!\n",&myargv[i][1]);
	    FUNC4 (handle,0,SEEK_END);
	    size = FUNC5(handle);
	    FUNC4 (handle,0,SEEK_SET);
	    file = FUNC6 (size);
	    FUNC3 (file,size,1,handle);
	    FUNC1 (handle);
			
	    // KEEP ALL CMDLINE ARGS FOLLOWING @RESPONSEFILE ARG
	    for (index = 0,k = i+1; k < myargc; k++)
		moreargs[index++] = myargv[k];
			
	    firstargv = myargv[0];
	    myargv = FUNC6(sizeof(char *)*MAXARGVS);
	    FUNC7(myargv,0,sizeof(char *)*MAXARGVS);
	    myargv[0] = firstargv;
			
	    infile = file;
	    indexinfile = k = 0;
	    indexinfile++;  // SKIP PAST ARGV[0] (KEEP IT)
	    do
	    {
		myargv[indexinfile++] = infile+k;
		while(k < size &&
		      ((*(infile+k)>= ' '+1) && (*(infile+k)<='z')))
		    k++;
		*(infile+k) = 0;
		while(k < size &&
		      ((*(infile+k)<= ' ') || (*(infile+k)>'z')))
		    k++;
	    } while(k < size);
			
	    for (k = 0;k < index;k++)
		myargv[indexinfile++] = moreargs[k];
	    myargc = indexinfile;
	
	    // DISPLAY ARGS
	    FUNC8("%d command-line args:\n",myargc);
	    for (k=1;k<myargc;k++)
		FUNC8("%s\n",myargv[k]);

	    break;
	}
}