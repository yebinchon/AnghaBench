
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int eraser_check_interval ;

UINT GetEraserCheckInterval()
{
 UINT ret = eraser_check_interval / 1000;

 if (ret == 0)
 {
  ret = 1;
 }

 return ret;
}
