
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 int abort () ;

int _raise_r(struct _reent *r, int sig)
{
    abort();
}
