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
typedef  char uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int MAX_PATH ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 

uint8 *FUNC8(void)
{
 uint8 *ol;
 uint8 *ret; 

 ol=FUNC1("HOME");

 if(ol)
 {
  ret=FUNC2(FUNC6(ol)+1+FUNC6("./fceultra"));
  FUNC5(ret,ol);
  FUNC4(ret,"/.fceultra");
 }
 else
 {
  #ifdef WIN32
  char *sa;

  ret=malloc(MAX_PATH+1);
  GetModuleFileName(NULL,ret,MAX_PATH+1);

  sa=strrchr(ret,'\\');
  if(sa)
   *sa = 0; 
  #else
  ret=FUNC2(1);
  ret[0]=0;
  #endif
  FUNC3("%s\n",ret);
 }
 return(ret);
}