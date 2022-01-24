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
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 char** joyparams ; 
 size_t* joytypes ; 
 int** keysets ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

void FUNC9()
{
  FILE *fr;
  FILE *fw;
  char string[256];
  int i;

  if ((fr=FUNC2("atari800.cfg","r"))==NULL)
  {
    FUNC5("Error opening atari800.cfg!\n");
    return;
  }
  if ((fw=FUNC2("atari800.tmp","w"))==NULL)
  {
    FUNC5("Error creating temporary file atari800.tmp!\n");
    FUNC0(fr);
    return;
  }
  while (FUNC1(string,sizeof(string),fr))
  {
    if (FUNC8(string,"JOYSTICK_",9)!=0 && FUNC8(string,"KEYSET_",7)!=0)
      FUNC4(string,fw);  /*copy all lines except those with JOYSTICK_ and KEYSET_ parameters*/
  }
  FUNC0(fr);
  i=FUNC7(string)-1;
  if (i>=0 && string[i]!='\n') FUNC3(fw,"\n");
  for (i=0;i<4;i++)
    FUNC3(fw,"KEYSET_%i=%i %i %i %i %i %i %i %i %i\n",i,
      keysets[i][0],keysets[i][1],keysets[i][2],keysets[i][3],
      keysets[i][4],keysets[i][5],keysets[i][6],keysets[i][7],
      keysets[i][8]);
  for (i=0;i<4;i++)
    FUNC3(fw,"JOYSTICK_%i=%s\n",i,joyparams[joytypes[i]]);
  FUNC0(fw);
  if (FUNC6("atari800.tmp","atari800.cfg")==0)
    FUNC5("Configuration successfully saved.\n");
  else
    FUNC5("Error when renaming atari800.tmp to atari800.cfg!\n");
}