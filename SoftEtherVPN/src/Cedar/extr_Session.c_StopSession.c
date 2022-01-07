
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SESSION ;


 int StopSessionEx (int *,int) ;

void StopSession(SESSION *s)
{
 StopSessionEx(s, 0);
}
