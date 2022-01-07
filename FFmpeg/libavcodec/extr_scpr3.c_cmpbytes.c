
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FFDIFFSIGN (int,int) ;

__attribute__((used)) static int cmpbytes(const void *p1, const void *p2)
{
    int left = *(const uint8_t *)p1;
    int right = *(const uint8_t *)p2;
    return FFDIFFSIGN(left, right);
}
