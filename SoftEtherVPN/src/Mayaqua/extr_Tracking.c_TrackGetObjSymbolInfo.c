
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ line; int filename; } ;
struct TYPE_4__ {scalar_t__ LineNumber; scalar_t__* FileName; TYPE_3__* CallStack; } ;
typedef TYPE_1__ TRACKING_OBJECT ;


 int GetCallStackSymbolInfo (TYPE_3__*) ;
 int StrCpy (scalar_t__*,int,int ) ;
 scalar_t__ StrLen (int ) ;

void TrackGetObjSymbolInfo(TRACKING_OBJECT *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 if (!(o->LineNumber == 0 && o->FileName[0] == 0))
 {
  return;
 }

 if (o->CallStack != ((void*)0))
 {
  GetCallStackSymbolInfo(o->CallStack);
  if (StrLen(o->CallStack->filename) != 0 && o->CallStack->line != 0)
  {
   StrCpy(o->FileName, sizeof(o->FileName), o->CallStack->filename);
   o->LineNumber = o->CallStack->line;
  }
 }
}
