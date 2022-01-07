
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;


 int g_num_waitqs ;
 struct waitq* global_waitqs ;

struct waitq *global_waitq(int index)
{
 return &global_waitqs[index % g_num_waitqs];
}
