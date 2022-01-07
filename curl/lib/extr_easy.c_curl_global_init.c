
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int TRUE ;
 int global_init (long,int ) ;

CURLcode curl_global_init(long flags)
{
  return global_init(flags, TRUE);
}
