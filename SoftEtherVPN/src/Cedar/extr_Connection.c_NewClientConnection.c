
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SESSION ;
typedef int CONNECTION ;


 int * NewClientConnectionEx (int *,int *,int ,int ) ;

CONNECTION *NewClientConnection(SESSION *s)
{
 return NewClientConnectionEx(s, ((void*)0), 0, 0);
}
