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
struct Smain {int argc; char** argv; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct Smain*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pmain ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(int argc, char* argv[])
{
 lua_State* L;
 struct Smain s;
 int i=FUNC0(argc,argv);
 argc-=i; argv+=i;
 if (argc<=0) FUNC6("no input files given");
 L=FUNC4();
 if (L==NULL) FUNC1("not enough memory for state");
 s.argc=argc;
 s.argv=argv;
 if (FUNC3(L,pmain,&s)!=0) FUNC1(FUNC5(L,-1));
 FUNC2(L);
 return EXIT_SUCCESS;
}