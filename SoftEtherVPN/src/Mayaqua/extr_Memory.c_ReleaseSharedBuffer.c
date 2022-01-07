
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Ref; } ;
typedef TYPE_1__ SHARED_BUFFER ;


 int CleanupSharedBuffer (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseSharedBuffer(SHARED_BUFFER *b)
{

 if (b == ((void*)0))
 {
  return;
 }

 if (Release(b->Ref) == 0)
 {
  CleanupSharedBuffer(b);
 }
}
