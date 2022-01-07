
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int GetDynValueOrDefault (char*,int,int,int) ;

UINT64 GetDynValueOrDefaultSafe(char *name, UINT64 default_value)
{
 return GetDynValueOrDefault(name, default_value, default_value / (UINT64)5, default_value * (UINT64)50);
}
