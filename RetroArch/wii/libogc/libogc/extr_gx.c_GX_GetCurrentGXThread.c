
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lwp_t ;


 int _gxcurrentlwp ;

lwp_t GX_GetCurrentGXThread()
{
 return _gxcurrentlwp;
}
