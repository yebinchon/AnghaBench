
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int send_state_t ;
struct TYPE_2__ {int send_state; } ;


 TYPE_1__ context ;

__attribute__((used)) static inline void send_set_state(send_state_t state)
{
    context.send_state = state;
}
