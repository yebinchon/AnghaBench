
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int timed_out ;

void handle_timeout(int fd)
{
    timed_out++;
}
