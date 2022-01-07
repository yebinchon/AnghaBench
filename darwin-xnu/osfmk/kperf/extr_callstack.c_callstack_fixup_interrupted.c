
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callstack {scalar_t__ nframes; int flags; uintptr_t* frames; } ;


 int CALLSTACK_KERNEL ;
 scalar_t__ MAX_CALLSTACK_FRAMES ;
 int assert (int) ;
 int interrupted_kernel_lr (uintptr_t*) ;
 int interrupted_kernel_sp_value (uintptr_t*) ;

__attribute__((used)) static void
callstack_fixup_interrupted(struct callstack *cs)
{
 uintptr_t fixup_val = 0;
 assert(cs->nframes < MAX_CALLSTACK_FRAMES);
 assert(cs->flags & CALLSTACK_KERNEL);
 cs->frames[cs->nframes++] = fixup_val;
}
