
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DVD_LowRequestError (int ) ;
 int __dvd_stategettingerrorcb ;

void __dvd_stategettingerror()
{
 DVD_LowRequestError(__dvd_stategettingerrorcb);
}
