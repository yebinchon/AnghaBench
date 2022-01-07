
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int s8 ;
typedef int s16 ;
struct TYPE_8__ {int addr; } ;
typedef TYPE_1__ result_struct ;


 int MappedMemoryAddMatch (int,int,int,TYPE_1__*,int*) ;
 int MappedMemoryReadByte (int) ;
 int MappedMemoryReadLong (int) ;
 int MappedMemoryReadWord (int) ;
 int SearchIncrementAndCheckBounds (TYPE_1__*,int*,int,int*,int ,int*,int) ;
 int SearchString (int,int,int,char const*,TYPE_1__*,int*) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int sscanf (char const*,char*,unsigned long*) ;
 scalar_t__ strtol (char const*,int *,int) ;
 scalar_t__ strtoul (char const*,int *,int) ;

result_struct *MappedMemorySearch(u32 startaddr, u32 endaddr, int searchtype,
                                  const char *searchstr,
                                  result_struct *prevresults, u32 *maxresults)
{
   u32 i=0;
   result_struct *results;
   u32 numresults=0;
   unsigned long searchval;
   int issigned=0;
   u32 addr;

   if ((results = (result_struct *)malloc(sizeof(result_struct) * maxresults[0])) == ((void*)0))
      return ((void*)0);

   switch (searchtype & 0x70)
   {
      case 130:
      case 132:
      case 133:
      {

         if (SearchString(startaddr, endaddr, searchtype, searchstr,
                          results, maxresults) == 0)
         {
            maxresults[0] = 0;
            free(results);
            return ((void*)0);
         }

         return results;
      }
      case 136:
         sscanf(searchstr, "%08lx", &searchval);
         break;
      case 129:
         searchval = (unsigned long)strtoul(searchstr, ((void*)0), 10);
         issigned = 0;
         break;
      case 131:
         searchval = (unsigned long)strtol(searchstr, ((void*)0), 10);
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


   for (;;)
   {
       u32 val=0;
       u32 newaddr;


       switch (searchtype & 0x3)
       {
          case 139:
             val = MappedMemoryReadByte(addr);

             if (issigned)
                val = (s8)val;

             if (SearchIncrementAndCheckBounds(prevresults, maxresults, numresults, &i, addr+1, &newaddr, endaddr))
                return results;
             break;
          case 128:
             val = MappedMemoryReadWord(addr);

             if (issigned)
                val = (s16)val;

             if (SearchIncrementAndCheckBounds(prevresults, maxresults, numresults, &i, addr+2, &newaddr, endaddr))
                return results;
             break;
          case 134:
             val = MappedMemoryReadLong(addr);

             if (SearchIncrementAndCheckBounds(prevresults, maxresults, numresults, &i, addr+4, &newaddr, endaddr))
                return results;
             break;
          default:
             maxresults[0] = 0;
             if (results)
                free(results);
             return ((void*)0);
       }


       switch (searchtype & 0xC)
       {
          case 138:
             if (val == searchval)
                MappedMemoryAddMatch(addr, val, searchtype, results, &numresults);
             break;
          case 135:
             if ((!issigned && val < searchval) || (issigned && (signed)val < (signed)searchval))
                MappedMemoryAddMatch(addr, val, searchtype, results, &numresults);
             break;
          case 137:
             if ((!issigned && val > searchval) || (issigned && (signed)val > (signed)searchval))
                MappedMemoryAddMatch(addr, val, searchtype, results, &numresults);
             break;
          default:
             maxresults[0] = 0;
             if (results)
                free(results);
             return ((void*)0);
       }

       addr = newaddr;
   }

   maxresults[0] = numresults;
   return results;
}
