
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remote_hangup ;

void handle_remote_closed(int fd)
{
    remote_hangup++;
}
