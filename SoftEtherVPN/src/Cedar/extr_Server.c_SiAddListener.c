
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SERVER ;


 int SiAddListenerEx (int *,int ,int,int) ;

bool SiAddListener(SERVER *s, UINT port, bool enabled)
{
 return SiAddListenerEx(s, port, enabled, 0);
}
