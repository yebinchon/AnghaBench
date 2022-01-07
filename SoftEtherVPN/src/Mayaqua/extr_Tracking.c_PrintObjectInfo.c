
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int CallStack; int Size; int Address; int Name; int Id; int CreatedDate; } ;
typedef TYPE_1__ TRACKING_OBJECT ;
typedef int SYSTEMTIME ;


 int GetDateTimeStrMilli (char*,int,int *) ;
 int MAX_SIZE ;
 int Print (char*,int ,int ,int ,int ,char*) ;
 int PrintCallStack (int ) ;
 int UINT64ToSystem (int *,int ) ;
 int UINT64_TO_POINTER (int ) ;

void PrintObjectInfo(TRACKING_OBJECT *o)
{
 SYSTEMTIME t;
 char tmp[MAX_SIZE];

 if (o == ((void*)0))
 {
  return;
 }

 UINT64ToSystem(&t, o->CreatedDate);
 GetDateTimeStrMilli(tmp, sizeof(tmp), &t);

 Print("    TRACKING_OBJECT ID: %u\n"
  "  TRACKING_OBJECT TYPE: %s\n"
  "      ADDRESS: 0x%p\n"
  "  TRACKING_OBJECT SIZE: %u bytes\n"
  " CREATED DATE: %s\n",
  o->Id, o->Name, UINT64_TO_POINTER(o->Address), o->Size, tmp);

 PrintCallStack(o->CallStack);
}
