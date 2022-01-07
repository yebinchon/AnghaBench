
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 unsigned int KEVENT_FLAG_ERROR_EVENTS ;

__attribute__((used)) static inline boolean_t
kevent_args_requesting_events(unsigned int flags, int nevents)
{
 return (!(flags & KEVENT_FLAG_ERROR_EVENTS) && nevents > 0);
}
