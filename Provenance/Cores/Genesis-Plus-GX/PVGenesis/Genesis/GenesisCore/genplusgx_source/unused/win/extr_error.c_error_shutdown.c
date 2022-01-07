
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ error_log ;
 int fclose (scalar_t__) ;

void error_shutdown(void)
{
  if(error_log) fclose(error_log);
}
