
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unzFile ;


 int unzOpenCurrentFile3 (int ,int *,int *,int ,char const*) ;

int unzOpenCurrentFilePassword(unzFile file, const char *password)
{
    return unzOpenCurrentFile3(file, ((void*)0), ((void*)0), 0, password);
}
