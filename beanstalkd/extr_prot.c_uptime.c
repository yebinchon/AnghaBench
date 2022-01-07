
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int nanoseconds () ;
 int started_at ;

__attribute__((used)) static uint
uptime()
{
    return (nanoseconds() - started_at) / 1000000000;
}
