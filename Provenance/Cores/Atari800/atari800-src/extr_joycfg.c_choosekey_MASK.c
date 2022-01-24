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

/* Variables and functions */
 int* buffer ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int hi ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char** keynames ; 
 int lo ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int FUNC8 (char*) ; 

int FUNC9(char *title,int oldval)
{
  char msg[80];
  int lastkey;
  int newval;
  int bad;

  FUNC1();
  FUNC7(msg,"Press key for %s",title);
  FUNC3((78-FUNC8(msg))/2,8);
  FUNC2(msg);
  FUNC3(34,9);
  FUNC2("(ESC=none)");
  FUNC7(msg,"Current setting: %s",keynames[oldval]);
  FUNC3((78-FUNC8(msg))/2,11);
  FUNC2(msg);
  while (FUNC4());
  FUNC6();

  do{
    while (hi==lo);
    lastkey=buffer[lo++];
    if (lo==100) lo=0;
    /*do not allow F1-F12, Pause, PrintScreen or Scrollock */
    bad=(lastkey>=59 && lastkey<=68) || lastkey==87 || lastkey==88 || lastkey==167
        || lastkey==183 || lastkey==70 || lastkey==197;
  }while ((lastkey&0xff00) || *keynames[lastkey&0xff]=='?' || *keynames[lastkey&0xff]=='#' || bad);
  newval=lastkey&0xff;
  if (newval==1) newval=255;
  FUNC7(msg,"Current setting: %s",keynames[newval]);
  FUNC3(1,11);
  FUNC0();
  FUNC3((78-FUNC8(msg))/2,11);
  FUNC2(msg);
  /*wait until key is depressed*/
  do{
    while (hi==lo);
    lastkey=buffer[lo++];
    if (lo==100) lo=0;
  }while(!(lastkey&0xff00));
  FUNC5();
  return newval;
}