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
 int /*<<< orphan*/  BACKGROUND ; 
 int FUNC0 (char*,int*,int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int) ; 
 char** keynames ; 
 int** keysets ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

void FUNC3(int no)
{
  int select,key,i;
  int keyset[9];
  char tUL[80],tU[80],tUR[80],tL[80],tR[80],tDL[80],tDR[80],tD[80],tF[80];

  for (i=0;i<9;i++) keyset[i]=keysets[no][i];
  select=0;
  do{
    FUNC2(tF,"Fire: %s",keynames[keyset[0]]);
    FUNC2(tDL,"Down+left: %s",keynames[keyset[1]]);
    FUNC2(tD,"Down: %s",keynames[keyset[2]]);
    FUNC2(tDR,"Down+right: %s",keynames[keyset[3]]);
    FUNC2(tL,"Left: %s",keynames[keyset[4]]);
    FUNC2(tR,"Right: %s",keynames[keyset[5]]);
    FUNC2(tUL,"Up+left: %s",keynames[keyset[6]]);
    FUNC2(tU,"Up: %s",keynames[keyset[7]]);
    FUNC2(tUR,"Up+right: %s",keynames[keyset[8]]);

    key=FUNC0("Change settings:",&select,BACKGROUND,
        tUL,tU,tUR,tL,tR,tDL,tD,tDR,tF,"-","Clear all","-",
        "Accept changes",
        "Discard changes",NULL);
    if (key==13)
      switch(select)
      {
        case 0:keyset[6]=FUNC1("up+left",keyset[6]);select++;break;
        case 1:keyset[7]=FUNC1("up",keyset[7]);select++;break;
        case 2:keyset[8]=FUNC1("up+right",keyset[8]);select++;break;
        case 3:keyset[4]=FUNC1("left",keyset[4]);select++;break;
        case 4:keyset[5]=FUNC1("right",keyset[5]);select++;break;
        case 5:keyset[1]=FUNC1("down+left",keyset[1]);select++;break;
        case 6:keyset[2]=FUNC1("down",keyset[2]);select++;break;
        case 7:keyset[3]=FUNC1("down+right",keyset[3]);select++;break;
        case 8:keyset[0]=FUNC1("fire",keyset[0]);break;
        case 10:for (i=0;i<9;i++) keyset[i]=255;break;
      }
  }while (key!=27 && !(key==13 && select>11));
  if (key==13 && select==12)
    for (i=0;i<9;i++) keysets[no][i]=keyset[i];
}