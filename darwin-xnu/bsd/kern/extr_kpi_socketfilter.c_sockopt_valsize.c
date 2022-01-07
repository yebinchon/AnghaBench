
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sockopt_t ;
struct TYPE_3__ {size_t sopt_valsize; } ;



size_t
sockopt_valsize(sockopt_t sopt)
{
 return (sopt->sopt_valsize);
}
