
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PROTO ;


 int * LIST_DATA (int ,int const) ;
 int protocols ;

PROTO *ProtoGet(const UINT index)
{
 return LIST_DATA(protocols, index);
}
