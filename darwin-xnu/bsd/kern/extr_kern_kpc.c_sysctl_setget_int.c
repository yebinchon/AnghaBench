
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct sysctl_req {int dummy; } ;


 int SYSCTL_IN (struct sysctl_req*,int*,int) ;
 int SYSCTL_OUT (struct sysctl_req*,int*,int) ;

__attribute__((used)) static int
sysctl_setget_int( struct sysctl_req *req,
                   int (*setget_func)(int) )
{
 int error = 0;
 int value = 0;

 error = SYSCTL_IN( req, &value, sizeof(value) );
 if( error )
  return error;

 value = setget_func(value);

 error = SYSCTL_OUT( req, &value, sizeof(value) );

 return error;
}
