
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int DISK_FREE_CHECK_INTERVAL_DEFAULT ;
 int eraser_check_interval ;

void SetEraserCheckInterval(UINT interval)
{
 if (interval == 0)
 {
  eraser_check_interval = DISK_FREE_CHECK_INTERVAL_DEFAULT;
 }
 else
 {
  eraser_check_interval = interval * 1000;
 }
}
