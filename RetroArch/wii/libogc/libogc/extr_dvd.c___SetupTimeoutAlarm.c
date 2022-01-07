
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int SYS_SetAlarm (int ,struct timespec const*,int ,int *) ;
 int __dvd_timeoutalarm ;
 int __dvd_timeouthandler ;

__attribute__((used)) static void __SetupTimeoutAlarm(const struct timespec *tp)
{
 SYS_SetAlarm(__dvd_timeoutalarm,tp,__dvd_timeouthandler,((void*)0));
}
