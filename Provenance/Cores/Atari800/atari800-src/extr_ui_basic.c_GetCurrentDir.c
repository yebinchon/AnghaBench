
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILENAME_MAX ;
 int * getcwd (char*,int ) ;

__attribute__((used)) static void GetCurrentDir(char buf[FILENAME_MAX])
{






 buf[0] = '.';
 buf[1] = '\0';

}
