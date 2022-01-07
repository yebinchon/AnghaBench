
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Session; int * ParentLocalBridge; } ;
typedef TYPE_1__ BRIDGE ;


 int Free (TYPE_1__*) ;
 int ReleaseSession (int ) ;
 int StopSession (int ) ;

void BrFreeBridge(BRIDGE *b)
{

 if (b == ((void*)0))
 {
  return;
 }

 if (b->ParentLocalBridge != ((void*)0))
 {
  b->ParentLocalBridge = ((void*)0);
 }


 StopSession(b->Session);
 ReleaseSession(b->Session);

 Free(b);
}
