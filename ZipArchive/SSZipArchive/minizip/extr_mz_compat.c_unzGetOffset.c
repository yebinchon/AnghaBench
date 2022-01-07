
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unzFile ;
typedef int int32_t ;


 int unzGetOffset64 (int ) ;

int32_t unzGetOffset(unzFile file)
{
    return (int32_t)unzGetOffset64(file);
}
