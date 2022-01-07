
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {int uu_flag; } ;


 int UT_CANCEL ;
 int UT_CANCELDISABLE ;
 int UT_CANCELED ;

__attribute__((used)) static int
uthread_is_cancelled(struct uthread *t)
{
 return (t->uu_flag & (UT_CANCELDISABLE | UT_CANCEL | UT_CANCELED)) == UT_CANCEL;
}
