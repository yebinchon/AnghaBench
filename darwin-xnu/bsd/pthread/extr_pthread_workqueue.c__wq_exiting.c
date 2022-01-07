
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int dummy; } ;


 int WQ_EXITING ;
 int _wq_flags (struct workqueue*) ;

__attribute__((used)) static inline bool
_wq_exiting(struct workqueue *wq)
{
 return _wq_flags(wq) & WQ_EXITING;
}
