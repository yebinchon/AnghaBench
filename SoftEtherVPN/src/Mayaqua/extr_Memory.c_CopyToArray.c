
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_item; int p; } ;
typedef TYPE_1__ LIST ;


 int Copy (void*,int ,int) ;
 int KS_INC (int ) ;
 int KS_TOARRAY_COUNT ;

void CopyToArray(LIST *o, void *p)
{

 if (o == ((void*)0) || p == ((void*)0))
 {
  return;
 }


 KS_INC(KS_TOARRAY_COUNT);

 Copy(p, o->p, sizeof(void *) * o->num_item);
}
