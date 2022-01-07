
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFABS (int) ;
 int FFMAX (int,int) ;
 size_t FFMIN (int,int) ;
 int* log_add_tab ;

__attribute__((used)) static inline int log_add(int a, int b)
{
    int c = FFABS(a - b) >> 1;
    return FFMAX(a, b) + log_add_tab[FFMIN(c, 211)];
}
