
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static u8 __pad_clampU8(u8 var,u8 org)
{
 if(var<org) var = org;
 return (var-org);
}
