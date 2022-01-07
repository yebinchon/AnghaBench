
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sockopt_t ;
typedef int sockopt_dir ;
struct TYPE_3__ {scalar_t__ sopt_dir; } ;


 scalar_t__ SOPT_GET ;
 int sockopt_get ;
 int sockopt_set ;

sockopt_dir
sockopt_direction(sockopt_t sopt)
{
 return ((sopt->sopt_dir == SOPT_GET) ? sockopt_get : sockopt_set);
}
