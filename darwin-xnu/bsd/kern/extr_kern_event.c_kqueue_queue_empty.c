
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int dummy; } ;
typedef int kq_index_t ;


 int TAILQ_EMPTY (int ) ;
 int kqueue_get_queue (struct kqueue*,int ) ;

__attribute__((used)) static int
kqueue_queue_empty(struct kqueue *kq, kq_index_t qos_index)
{
 return TAILQ_EMPTY(kqueue_get_queue(kq, qos_index));
}
