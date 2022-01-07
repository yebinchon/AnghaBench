
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
typedef int stack ;
struct TYPE_7__ {void** msa_stack; void** msa_pstack; int msa_ptstamp; int msa_tstamp; scalar_t__ msa_depth; scalar_t__ msa_pdepth; int msa_thread; int msa_pthread; } ;
typedef TYPE_1__ mcl_scratch_audit_t ;
struct TYPE_8__ {int * mca_contents; } ;
typedef TYPE_2__ mcache_audit_t ;
struct TYPE_9__ {int tv_usec; int tv_sec; } ;


 int MCACHE_STACK_DEPTH ;
 TYPE_1__* MCA_SAVED_SCRATCH_PTR (TYPE_2__*) ;
 scalar_t__ OSBacktrace (void**,int) ;
 int VERIFY (int ) ;
 int bcopy (void**,void**,int) ;
 int bzero (void**,int) ;
 int current_thread () ;
 TYPE_4__ mb_start ;
 int microuptime (struct timeval*) ;

__attribute__((used)) static void
mcl_audit_scratch(mcache_audit_t *mca)
{
 void *stack[MCACHE_STACK_DEPTH + 1];
 mcl_scratch_audit_t *msa;
 struct timeval now;

 VERIFY(mca->mca_contents != ((void*)0));
 msa = MCA_SAVED_SCRATCH_PTR(mca);

 msa->msa_pthread = msa->msa_thread;
 msa->msa_thread = current_thread();
 bcopy(msa->msa_stack, msa->msa_pstack, sizeof (msa->msa_pstack));
 msa->msa_pdepth = msa->msa_depth;
 bzero(stack, sizeof (stack));
 msa->msa_depth = OSBacktrace(stack, MCACHE_STACK_DEPTH + 1) - 1;
 bcopy(&stack[1], msa->msa_stack, sizeof (msa->msa_stack));

 msa->msa_ptstamp = msa->msa_tstamp;
 microuptime(&now);

 msa->msa_tstamp = ((now.tv_usec - mb_start.tv_usec) / 1000);
 if ((now.tv_sec - mb_start.tv_sec) > 0)
  msa->msa_tstamp += ((now.tv_sec - mb_start.tv_sec) * 1000);
}
