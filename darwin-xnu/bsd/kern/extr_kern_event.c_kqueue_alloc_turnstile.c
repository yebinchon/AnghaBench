
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int dummy; } ;
struct kqueue {int dummy; } ;


 struct turnstile* kqueue_get_turnstile (struct kqueue*,int) ;

struct turnstile *
kqueue_alloc_turnstile(struct kqueue *kq)
{
 return kqueue_get_turnstile(kq, 1);
}
