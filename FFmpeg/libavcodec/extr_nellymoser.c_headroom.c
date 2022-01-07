
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFABS (int) ;
 int av_log2 (int ) ;

__attribute__((used)) static int headroom(int *la)
{
    int l;
    if (*la == 0) {
        return 31;
    }
    l = 30 - av_log2(FFABS(*la));
    *la *= 1<<l;
    return l;
}
