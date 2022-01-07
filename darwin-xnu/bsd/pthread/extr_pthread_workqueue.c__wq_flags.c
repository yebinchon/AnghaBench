
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct workqueue {int wq_flags; } ;


 int os_atomic_load (int *,int ) ;
 int relaxed ;

__attribute__((used)) static inline uint32_t
_wq_flags(struct workqueue *wq)
{
 return os_atomic_load(&wq->wq_flags, relaxed);
}
