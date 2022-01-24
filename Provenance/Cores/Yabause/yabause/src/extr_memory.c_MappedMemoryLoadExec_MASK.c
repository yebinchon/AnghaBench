#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  PC; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;

/* Variables and functions */
 TYPE_1__* MSH2 ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 size_t FUNC10 (char*) ; 
 char* FUNC11 (char const*,char) ; 
 char FUNC12 (char) ; 

void FUNC13(const char *filename, u32 pc)
{
   char *p;
   size_t i;

   if ((p = FUNC11(filename, '.')))
   {
      p = FUNC9(p);
      for (i = 0; i < FUNC10(p); i++)
         p[i] = FUNC12(p[i]);
      if (FUNC8(p, ".COF") == 0 || FUNC8(p, ".COFF") == 0)
      {
         FUNC1(filename);
         FUNC7(p);
         return;
      }
      else if(FUNC8(p, ".ELF") == 0)
      {
         FUNC2(filename);
         FUNC7(p);
         return;
      }

      FUNC7(p);
   }

   FUNC5();

   // Setup the vector table area, etc.
   FUNC6();

   FUNC0(filename, pc);
   FUNC3(MSH2, &MSH2->regs);
   MSH2->regs.PC = pc;
   FUNC4(MSH2, &MSH2->regs);
}