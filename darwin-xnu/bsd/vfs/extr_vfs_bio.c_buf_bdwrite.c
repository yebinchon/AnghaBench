
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errno_t ;
typedef int buf_t ;


 int bdwrite_internal (int ,int ) ;

errno_t
buf_bdwrite(buf_t bp)
{
 return (bdwrite_internal(bp, 0));
}
