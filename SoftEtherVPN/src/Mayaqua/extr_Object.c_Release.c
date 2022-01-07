
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ c; } ;
typedef TYPE_1__ REF ;


 scalar_t__ Dec (scalar_t__) ;
 int DeleteCounter (scalar_t__) ;
 int Free (TYPE_1__*) ;
 int KS_CURRENT_REFED_COUNT ;
 int KS_CURRENT_REF_COUNT ;
 int KS_DEC (int ) ;
 int KS_FREEREF_COUNT ;
 int KS_INC (int ) ;
 int KS_RELEASE_COUNT ;

UINT Release(REF *ref)
{
 UINT c;

 if (ref == ((void*)0))
 {
  return 0;
 }


 KS_INC(KS_RELEASE_COUNT);
 KS_DEC(KS_CURRENT_REFED_COUNT);

 c = Dec(ref->c);
 if (c == 0)
 {

  KS_DEC(KS_CURRENT_REF_COUNT);
  KS_INC(KS_FREEREF_COUNT);

  DeleteCounter(ref->c);
  ref->c = 0;
  Free(ref);
 }
 return c;
}
