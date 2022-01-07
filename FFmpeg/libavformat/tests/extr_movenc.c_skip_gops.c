
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mux_gops (int) ;
 int skip_write ;

__attribute__((used)) static void skip_gops(int n)
{
    skip_write = 1;
    mux_gops(n);
    skip_write = 0;
}
