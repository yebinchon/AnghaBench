
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 int _raise_r (struct _reent*,int ) ;

__attribute__((used)) static void raise_r_stub(struct _reent *rptr)
{
    _raise_r(rptr, 0);
}
