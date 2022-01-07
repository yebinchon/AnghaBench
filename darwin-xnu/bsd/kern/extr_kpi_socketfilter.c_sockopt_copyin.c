
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockopt_t ;
typedef int errno_t ;


 int sooptcopyin (int ,void*,size_t,size_t) ;

errno_t
sockopt_copyin(sockopt_t sopt, void *data, size_t len)
{
 return (sooptcopyin(sopt, data, len, len));
}
