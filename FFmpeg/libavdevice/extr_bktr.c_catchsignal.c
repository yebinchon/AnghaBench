
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nsignals ;

__attribute__((used)) static void catchsignal(int signal)
{
    nsignals++;
    return;
}
