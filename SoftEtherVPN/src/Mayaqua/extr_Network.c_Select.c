
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCKSET ;
typedef int CANCEL ;


 int UnixSelect (int *,int ,int *,int *) ;
 int Win32Select (int *,int ,int *,int *) ;

void Select(SOCKSET *set, UINT timeout, CANCEL *c1, CANCEL *c2)
{



 UnixSelect(set, timeout, c1, c2);

}
