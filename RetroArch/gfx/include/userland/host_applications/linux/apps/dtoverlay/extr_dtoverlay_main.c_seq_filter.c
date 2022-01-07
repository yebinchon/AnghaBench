
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;


 int sscanf (int ,char*,int*) ;

int seq_filter(const struct dirent *de)
{
    int num;
    return (sscanf(de->d_name, "%d_", &num) == 1);
}
