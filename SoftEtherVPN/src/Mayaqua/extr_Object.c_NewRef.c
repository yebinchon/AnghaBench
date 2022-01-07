
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ REF ;


 int Inc (int ) ;
 int KS_ADDREF_COUNT ;
 int KS_CURRENT_REFED_COUNT ;
 int KS_CURRENT_REF_COUNT ;
 int KS_INC (int ) ;
 int KS_NEWREF_COUNT ;
 TYPE_1__* Malloc (int) ;
 int NewCounter () ;

REF *NewRef()
{
 REF *ref;


 ref = Malloc(sizeof(REF));


 ref->c = NewCounter();


 Inc(ref->c);


 KS_INC(KS_NEWREF_COUNT);
 KS_INC(KS_CURRENT_REF_COUNT);
 KS_INC(KS_ADDREF_COUNT);
 KS_INC(KS_CURRENT_REFED_COUNT);

 return ref;
}
