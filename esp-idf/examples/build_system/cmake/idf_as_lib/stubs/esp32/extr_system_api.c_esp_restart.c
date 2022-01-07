
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int longjmp (int ,int ) ;
 int printf (char*) ;
 int sleep (int) ;

void esp_restart(void)
{
    printf("\n");
    sleep(1);
    longjmp(buf, 0);
}
