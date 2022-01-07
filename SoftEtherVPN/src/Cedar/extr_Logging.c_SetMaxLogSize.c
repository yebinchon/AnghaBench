
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;


 scalar_t__ MAX_LOG_SIZE_DEFAULT ;
 scalar_t__ logger_max_log_size ;

void SetMaxLogSize(UINT64 size)
{
 if (size == 0)
 {
  size = MAX_LOG_SIZE_DEFAULT;
 }

 logger_max_log_size = size;
}
