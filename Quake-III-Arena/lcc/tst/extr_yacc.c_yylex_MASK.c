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
 int CON ; 
 int ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  yyout ; 
 int* yytext ; 
 int /*<<< orphan*/  FUNC2 () ; 

FUNC3(){
int nstr; extern int yyprevious;
while((nstr = FUNC1()) >= 0)
yyfussy: switch(nstr){
case 0:
if(FUNC2()) return(0); break;
case 1:
 return ID;
break;
case 2:
                 return CON;
break;
case 3:
                  ;
break;
case 4:
                   return yytext[0];
break;
case -1:
break;
default:
FUNC0(yyout,"bad switch yylook %d",nstr);
} return(0); }