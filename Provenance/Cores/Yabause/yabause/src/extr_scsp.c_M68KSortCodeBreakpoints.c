
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* codebreakpoint; } ;
struct TYPE_3__ {int addr; } ;


 int MAX_BREAKPOINTS ;
 TYPE_2__* ScspInternalVars ;

void
M68KSortCodeBreakpoints (void)
{
  int i, i2;
  u32 tmp;

  for (i = 0; i < (MAX_BREAKPOINTS - 1); i++)
    {
      for (i2 = i+1; i2 < MAX_BREAKPOINTS; i2++)
        {
          if (ScspInternalVars->codebreakpoint[i].addr == 0xFFFFFFFF &&
              ScspInternalVars->codebreakpoint[i2].addr != 0xFFFFFFFF)
            {
              tmp = ScspInternalVars->codebreakpoint[i].addr;
              ScspInternalVars->codebreakpoint[i].addr =
                ScspInternalVars->codebreakpoint[i2].addr;
              ScspInternalVars->codebreakpoint[i2].addr = tmp;
            }
        }
    }
}
