
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;


 int AcceptInitEx (int *,int) ;

void AcceptInit(SOCK *s)
{
 AcceptInitEx(s, 0);
}
