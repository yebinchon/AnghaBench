#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ reg; scalar_t__ type; } ;
typedef  TYPE_1__ sh_operand_info ;
typedef  int /*<<< orphan*/  sh_opcode_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*) ; 
 int FUNC6 (char*,char*) ; 
 char FUNC7 (char) ; 

int FUNC8(char *str, char *err_msg)

// Function to do all the work

{
   char name[30];
   char arg1[30];
   char arg2[30];
   char *p;
   int loop;
   int oplen,arg1len,arg2len;
   sh_operand_info arg1info,arg2info,disp;
   sh_opcode_info opcode;

   arg1info.type = 0;
   arg1info.reg = 0;
   arg2info.type = 0;
   arg2info.reg = 0;
   //gets(str);
   p = str;
   while(*p == ' ')
     p++;

   if((oplen = FUNC6(p,name)) == 0)
    {
       FUNC0("No opcode", err_msg);
       return 0;
    }

   p += oplen;
   while(*p == ' ')
     p++;

   arg1len = FUNC5(p,arg1);
   p += arg1len;

   while(*p == ' ')
     p++;
   if(*p == ',')
     p++;
   while(*p == ' ')
     p++;

   arg2len = FUNC5(p,arg2);

   for(loop = 0;name[loop] != 0;loop++)
   {
       name[loop] = FUNC7(name[loop]);
   }
   for(loop = 0;arg1[loop] != 0;loop++)
      arg1[loop] = FUNC7(arg1[loop]);
   for(loop = 0;arg2[loop] != 0;loop++)
      arg2[loop] = FUNC7(arg2[loop]);

   if(!FUNC2(arg1,&arg1info,err_msg))
   {
      if(arg1[0] != 0)
        FUNC0("Arg 1", err_msg);
      return 0;
   }
   if(!FUNC2(arg2,&arg2info,err_msg))
   {
      if(arg2[0] != 0)
        FUNC0("Arg 2", err_msg);
      return 0;
   }

   if(!FUNC4(name,&arg1info,&arg2info,&opcode))
   {
     FUNC0("Invalid opcode. Likely doesn't exist or format is wrong\n", err_msg);
     return 0;
   }

   loop = 0;
   FUNC3(arg1,arg2,&arg1info,&arg2info,&disp);
   return FUNC1(opcode,arg1info,arg2info,disp);
}