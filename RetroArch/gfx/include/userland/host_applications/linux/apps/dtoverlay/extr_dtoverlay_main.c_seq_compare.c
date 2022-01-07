
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;


 int atoi (int ) ;

int seq_compare(const struct dirent **de1, const struct dirent **de2)
{
    int num1 = atoi((*de1)->d_name);
    int num2 = atoi((*de2)->d_name);
    if (num1 < num2)
     return -1;
    else if (num1 == num2)
     return 0;
    else
     return 1;
}
