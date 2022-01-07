
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;


 int get_preemption_level () ;
 int panic (char*,int *,int) ;

__attribute__((used)) static inline void
lck_mtx_check_preemption(lck_mtx_t *lock)
{






 (void)lock;

}
