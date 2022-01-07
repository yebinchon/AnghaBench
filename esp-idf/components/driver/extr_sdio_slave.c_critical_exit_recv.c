
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_spinlock; } ;


 TYPE_1__ context ;
 int portEXIT_CRITICAL (int *) ;

__attribute__((used)) static inline void critical_exit_recv(void)
{
    portEXIT_CRITICAL(&context.recv_spinlock);
}
