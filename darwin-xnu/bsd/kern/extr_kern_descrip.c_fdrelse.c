
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int _fdrelse (int ,int) ;

void
fdrelse(proc_t p, int fd)
{
 _fdrelse(p, fd);
}
