
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unzFile ;
typedef int uint32_t ;


 int unzSetOffset64 (int ,int ) ;

int unzSetOffset(unzFile file, uint32_t pos)
{
    return unzSetOffset64(file, pos);
}
