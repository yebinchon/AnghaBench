
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct timespec {int dummy; } ;


 int __gethostuuid (int ,struct timespec const*,int) ;

int
_getprivatesystemidentifier(uuid_t uuid, const struct timespec *timeout)
{
 return __gethostuuid(uuid, timeout, 1);
}
