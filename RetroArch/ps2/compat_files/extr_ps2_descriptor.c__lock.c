
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WaitSema (int ) ;
 int _lock_sema_id ;

__attribute__((used)) static inline int _lock(void)
{
   return(WaitSema(_lock_sema_id));
}
