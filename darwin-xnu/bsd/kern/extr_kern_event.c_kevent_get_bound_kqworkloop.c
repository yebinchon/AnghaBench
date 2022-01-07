
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct uthread {struct kqrequest* uu_kqr_bound; } ;
struct kqueue {int dummy; } ;
struct kqrequest {int dummy; } ;


 struct uthread* get_bsdthread_info (int ) ;
 scalar_t__ kqr_kqworkloop (struct kqrequest*) ;

__attribute__((used)) static struct kqueue *
kevent_get_bound_kqworkloop(thread_t thread)
{
 struct uthread *ut = get_bsdthread_info(thread);
 struct kqrequest *kqr = ut->uu_kqr_bound;

 return kqr ? (struct kqueue *)kqr_kqworkloop(kqr) : ((void*)0);
}
