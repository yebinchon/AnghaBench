
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_4__ {int LineNumber; int FileName; int Size; int Address; int Name; int Id; int CreatedDate; } ;
typedef TYPE_1__ TRACKING_OBJECT ;
typedef int SYSTEMTIME ;


 int GetTimeStrMilli (char*,int,int *) ;
 int MAX_SIZE ;
 int Print (char*,int ,int ,char*,int ,int ,int ,int ) ;
 int TrackGetObjSymbolInfo (TYPE_1__*) ;
 int UINT64ToSystem (int *,int ) ;
 int UINT64_TO_POINTER (int ) ;

void PrintObjectList(TRACKING_OBJECT *o)
{
 char tmp[MAX_SIZE];
 SYSTEMTIME t;
 UINT64ToSystem(&t, o->CreatedDate);
 GetTimeStrMilli(tmp, sizeof(tmp), &t);
 TrackGetObjSymbolInfo(o);
 Print("%-4u - [%-6s] %s 0x%p size=%-5u %11s %u\n",
  o->Id, o->Name, tmp, UINT64_TO_POINTER(o->Address), o->Size, o->FileName, o->LineNumber);
}
