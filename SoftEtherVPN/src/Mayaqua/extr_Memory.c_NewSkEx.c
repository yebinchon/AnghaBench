
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_reserved; int no_compact; void* p; scalar_t__ num_item; int ref; int lock; } ;
typedef TYPE_1__ SK ;


 int INIT_NUM_RESERVED ;
 int KS_INC (int ) ;
 int KS_NEWSK_COUNT ;
 void* Malloc (int) ;
 int NewLock () ;
 int NewRef () ;

SK *NewSkEx(bool no_compact)
{
 SK *s;

 s = Malloc(sizeof(SK));
 s->lock = NewLock();
 s->ref = NewRef();
 s->num_item = 0;
 s->num_reserved = INIT_NUM_RESERVED;
 s->p = Malloc(sizeof(void *) * s->num_reserved);
 s->no_compact = no_compact;


 KS_INC(KS_NEWSK_COUNT);

 return s;
}
