
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_file_initialized ;

bool is_logging_to_file(void)
{
   return log_file_initialized;
}
