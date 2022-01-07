
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zipFile ;


 int zipClose_64 (int ,char const*) ;

int zipClose(zipFile file, const char *global_comment)
{
    return zipClose_64(file, global_comment);
}
