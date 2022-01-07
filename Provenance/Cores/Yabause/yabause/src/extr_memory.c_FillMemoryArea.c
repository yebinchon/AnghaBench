
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int writewordfunc ;
typedef int writelongfunc ;
typedef int writebytefunc ;
typedef int readwordfunc ;
typedef int readlongfunc ;
typedef int readbytefunc ;


 int * ReadByteList ;
 int * ReadLongList ;
 int * ReadWordList ;
 int * WriteByteList ;
 int * WriteLongList ;
 int * WriteWordList ;

__attribute__((used)) static void FillMemoryArea(unsigned short start, unsigned short end,
                           readbytefunc r8func, readwordfunc r16func,
                           readlongfunc r32func, writebytefunc w8func,
                           writewordfunc w16func, writelongfunc w32func)
{
   int i;

   for (i=start; i < (end+1); i++)
   {
      ReadByteList[i] = r8func;
      ReadWordList[i] = r16func;
      ReadLongList[i] = r32func;
      WriteByteList[i] = w8func;
      WriteWordList[i] = w16func;
      WriteLongList[i] = w32func;
   }
}
