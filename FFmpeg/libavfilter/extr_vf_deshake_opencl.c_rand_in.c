
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVLFG ;


 int av_lfg_get (int *) ;

__attribute__((used)) static int rand_in(int low, int high, AVLFG *alfg) {
    return (av_lfg_get(alfg) % (high - low)) + low;
}
