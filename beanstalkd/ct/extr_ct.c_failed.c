
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SIGABRT ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WTERMSIG (int) ;

__attribute__((used)) static int
failed(int s)
{
    return WIFSIGNALED(s) && (WTERMSIG(s) == SIGABRT);
}
