
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;


 int INT32_MAX ;
 int av_assert0 (int) ;

__attribute__((used)) static int32_t tag_tree_size(int w, int h)
{
    int64_t res = 0;
    while (w > 1 || h > 1) {
        res += w * (int64_t)h;
        av_assert0(res + 1 < INT32_MAX);
        w = (w + 1) >> 1;
        h = (h + 1) >> 1;
    }
    return (int32_t)(res + 1);
}
