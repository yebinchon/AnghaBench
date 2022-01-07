
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvdcmdblk ;


 int DVD_LowReadId (int *,int ) ;
 int __dvd_statecoverclosedcb ;
 int __dvd_tmpid0 ;

void __dvd_statecoverclosed_cmd(dvdcmdblk *block)
{
 DVD_LowReadId(&__dvd_tmpid0,__dvd_statecoverclosedcb);
}
