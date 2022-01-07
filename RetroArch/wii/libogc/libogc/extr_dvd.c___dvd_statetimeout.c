
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DVD_RESETSOFT ;
 int DVD_Reset (int ) ;
 int __dvd_stateerrorcb (int ) ;
 int __dvd_storeerror (int) ;

void __dvd_statetimeout()
{
 __dvd_storeerror(0x01234568);
 DVD_Reset(DVD_RESETSOFT);
 __dvd_stateerrorcb(0);
}
