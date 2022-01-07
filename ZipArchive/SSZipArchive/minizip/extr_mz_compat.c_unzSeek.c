
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unzFile ;
typedef int int32_t ;


 int unzSeek64 (int ,int ,int) ;

int unzSeek(unzFile file, int32_t offset, int origin)
{
    return unzSeek64(file, offset, origin);
}
