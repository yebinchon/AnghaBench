
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int PROC_NULL ;
 int current_proc () ;
 int socreate_internal (int,struct socket**,int,int,int ,int ,int ) ;

int
socreate(int dom, struct socket **aso, int type, int proto)
{
 return (socreate_internal(dom, aso, type, proto, current_proc(), 0,
     PROC_NULL));
}
