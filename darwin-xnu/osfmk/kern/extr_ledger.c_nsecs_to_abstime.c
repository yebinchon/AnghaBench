
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int nanoseconds_to_absolutetime (int ,int *) ;

__attribute__((used)) static uint64_t
nsecs_to_abstime(uint64_t nsecs)
{
 uint64_t abstime;

 nanoseconds_to_absolutetime(nsecs, &abstime);
 return (abstime);
}
