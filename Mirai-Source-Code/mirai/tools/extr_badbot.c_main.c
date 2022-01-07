
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,char*) ;
 int sleep (int) ;

int main(int argc, char **args)
{
    printf("REPORT %s:%s\n", "127.0.0.1", "80");

    while (1)
        sleep(1);

    return 0;
}
