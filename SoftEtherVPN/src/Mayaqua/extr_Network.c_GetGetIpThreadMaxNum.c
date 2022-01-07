
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int max_getip_thread ;

UINT GetGetIpThreadMaxNum()
{
 UINT ret = max_getip_thread;

 if (ret == 0)
 {
  ret = 0x7FFFFFFF;
 }

 return ret;
}
