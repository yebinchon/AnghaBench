
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long UINT64 ;
typedef unsigned long long UINT ;
typedef int IO ;


 int FileSize64 (int *) ;

UINT FileSize(IO *o)
{
 UINT64 size = (UINT)(FileSize64(o));

 if (size >= 4294967296ULL)
 {
  size = 4294967295ULL;
 }

 return (UINT)size;
}
