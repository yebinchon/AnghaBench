#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int s8 ;
typedef  int s16 ;
struct TYPE_8__ {int addr; } ;
typedef  TYPE_1__ result_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,TYPE_1__*,int*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
#define  SEARCHBYTE 139 
#define  SEARCHEXACT 138 
#define  SEARCHGREATERTHAN 137 
#define  SEARCHHEX 136 
#define  SEARCHLESSTHAN 135 
#define  SEARCHLONG 134 
#define  SEARCHREL16BIT 133 
#define  SEARCHREL8BIT 132 
#define  SEARCHSIGNED 131 
#define  SEARCHSTRING 130 
#define  SEARCHUNSIGNED 129 
#define  SEARCHWORD 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int,int*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,char const*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,unsigned long*) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (char const*,int /*<<< orphan*/ *,int) ; 

result_struct *FUNC11(u32 startaddr, u32 endaddr, int searchtype,
                                  const char *searchstr,
                                  result_struct *prevresults, u32 *maxresults)
{
   u32 i=0;
   result_struct *results;
   u32 numresults=0;
   unsigned long searchval;
   int issigned=0;
   u32 addr;

   if ((results = (result_struct *)FUNC7(sizeof(result_struct) * maxresults[0])) == NULL)
      return NULL;

   switch (searchtype & 0x70)
   {
      case SEARCHSTRING:
      case SEARCHREL8BIT:
      case SEARCHREL16BIT:
      {
         // String/8-bit relative/16-bit relative search(not supported, yet)
         if (FUNC5(startaddr, endaddr,  searchtype, searchstr,
                          results, maxresults) == 0)
         {
            maxresults[0] = 0;
            FUNC6(results);
            return NULL;
         }

         return results;
      }
      case SEARCHHEX:
         FUNC8(searchstr, "%08lx", &searchval);
         break;
      case SEARCHUNSIGNED:
         searchval = (unsigned long)FUNC10(searchstr, NULL, 10);
         issigned = 0;
         break;
      case SEARCHSIGNED:
         searchval = (unsigned long)FUNC9(searchstr, NULL, 10);
         issigned = 1;
         break;
   }

   if (prevresults)
   {
      addr = prevresults[i].addr;
      i++;
   }
   else
      addr = startaddr;

   // Regular value search
   for (;;)
   {
       u32 val=0;
       u32 newaddr;

       // Fetch byte/word/etc.
       switch (searchtype & 0x3)
       {
          case SEARCHBYTE:
             val = FUNC1(addr);
             // sign extend if neccessary
             if (issigned)
                val = (s8)val;

             if (FUNC4(prevresults, maxresults, numresults, &i, addr+1, &newaddr, endaddr))
                return results;
             break;
          case SEARCHWORD:
             val = FUNC3(addr);
             // sign extend if neccessary
             if (issigned)
                val = (s16)val;

             if (FUNC4(prevresults, maxresults, numresults, &i, addr+2, &newaddr, endaddr))
                return results;
             break;
          case SEARCHLONG:
             val = FUNC2(addr);

             if (FUNC4(prevresults, maxresults, numresults, &i, addr+4, &newaddr, endaddr))
                return results;
             break;
          default:
             maxresults[0] = 0;
             if (results)
                FUNC6(results);
             return NULL;
       }

       // Do a comparison
       switch (searchtype & 0xC)
       {
          case SEARCHEXACT:
             if (val == searchval)
                FUNC0(addr, val, searchtype, results, &numresults);
             break;
          case SEARCHLESSTHAN:
             if ((!issigned && val < searchval) || (issigned && (signed)val < (signed)searchval))
                FUNC0(addr, val, searchtype, results, &numresults);
             break;
          case SEARCHGREATERTHAN:
             if ((!issigned && val > searchval) || (issigned && (signed)val > (signed)searchval))
                FUNC0(addr, val, searchtype, results, &numresults);
             break;
          default:
             maxresults[0] = 0;
             if (results)
                FUNC6(results);
             return NULL;
       }

       addr = newaddr;
   }

   maxresults[0] = numresults;
   return results;
}