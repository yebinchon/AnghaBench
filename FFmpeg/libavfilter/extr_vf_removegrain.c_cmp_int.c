
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFDIFFSIGN (int,int) ;

__attribute__((used)) static int cmp_int(const void *p1, const void *p2)
{
    int left = *(const int *)p1;
    int right = *(const int *)p2;
    return FFDIFFSIGN(left, right);
}
