
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_spinlock; } ;


 TYPE_1__ context ;
 int portENTER_CRITICAL (int *) ;

__attribute__((used)) static inline void critical_enter_recv(void)
{
    portENTER_CRITICAL(&context.recv_spinlock);
}
