
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p_mqueue; } ;
struct knote {TYPE_1__ kn_ptr; } ;
typedef int ipc_mqueue_t ;


 int FILTER_ACTIVE ;
 scalar_t__ ipc_mqueue_set_peek (int ) ;

__attribute__((used)) static int
filt_machportpeek(struct knote *kn)
{
 ipc_mqueue_t mqueue = kn->kn_ptr.p_mqueue;

 return ipc_mqueue_set_peek(mqueue) ? FILTER_ACTIVE : 0;
}
