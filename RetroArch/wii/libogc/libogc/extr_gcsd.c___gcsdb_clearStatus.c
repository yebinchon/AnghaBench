
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __gcsd_clearStatus (int) ;

__attribute__((used)) static bool __gcsdb_clearStatus(void)
{
 return __gcsd_clearStatus(1);
}
