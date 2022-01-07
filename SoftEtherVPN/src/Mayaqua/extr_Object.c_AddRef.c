
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int c; } ;
typedef TYPE_1__ REF ;


 int Inc (int ) ;
 int KS_ADDREF_COUNT ;
 int KS_CURRENT_REFED_COUNT ;
 int KS_INC (int ) ;

UINT AddRef(REF *ref)
{
 UINT c;

 if (ref == ((void*)0))
 {
  return 0;
 }

 c = Inc(ref->c);


 KS_INC(KS_ADDREF_COUNT);
 KS_INC(KS_CURRENT_REFED_COUNT);

 return c;
}
