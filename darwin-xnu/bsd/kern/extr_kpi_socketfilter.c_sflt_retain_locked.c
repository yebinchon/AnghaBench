
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_filter {int sf_refcount; } ;



__attribute__((used)) static void
sflt_retain_locked(struct socket_filter *filter)
{
 filter->sf_refcount++;
}
