
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;


 scalar_t__ MAX_LOG_SIZE_DEFAULT ;
 scalar_t__ logger_max_log_size ;

UINT64 GetMaxLogSize()
{
 UINT64 ret = logger_max_log_size;

 if (ret == 0)
 {
  ret = MAX_LOG_SIZE_DEFAULT;
 }

 return ret;
}
