
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taosGetSystemLocale () ;
 int taosGetSystemTimezone () ;

void taosGetSystemInfo() {
  taosGetSystemTimezone();
  taosGetSystemLocale();
}
