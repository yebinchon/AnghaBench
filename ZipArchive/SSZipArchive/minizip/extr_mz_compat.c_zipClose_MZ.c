
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zipFile ;


 int MZ_VERSION_MADEBY ;
 int zipClose2_MZ (int ,char const*,int ) ;

int zipClose_MZ(zipFile file, const char *global_comment)
{
    return zipClose2_MZ(file, global_comment, MZ_VERSION_MADEBY);
}
