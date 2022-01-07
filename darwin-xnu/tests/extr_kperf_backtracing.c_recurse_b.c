
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dispatch_semaphore_t ;


 int TRIGGERING_DEBUGID ;
 int dispatch_semaphore_signal (scalar_t__) ;
 int kdebug_trace (int ,int ,int ,int ,int ) ;
 int recurse_a (scalar_t__,unsigned int) ;

__attribute__((used)) static int __attribute__((noinline,not_tail_called))
recurse_b(dispatch_semaphore_t spinning, unsigned int frames)
{
    if (frames == 0) {
        if (spinning) {
            dispatch_semaphore_signal(spinning);
            for (;;);
        } else {
            kdebug_trace(TRIGGERING_DEBUGID, 0, 0, 0, 0);
            return 0;
        }
    }

    return recurse_a(spinning, frames - 1) + 1;
}
