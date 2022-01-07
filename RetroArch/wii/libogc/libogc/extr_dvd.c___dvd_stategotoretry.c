
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DVD_LowStopMotor (int ) ;
 int __dvd_stategotoretrycb ;

void __dvd_stategotoretry()
{
 DVD_LowStopMotor(__dvd_stategotoretrycb);
}
