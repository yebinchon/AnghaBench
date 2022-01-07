
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ all_same (char*,int,int) ;

__attribute__((used)) static int all_white(char *bitmap, int w, int h)
{
    return *bitmap == 0 && all_same(bitmap, w, h);
}
