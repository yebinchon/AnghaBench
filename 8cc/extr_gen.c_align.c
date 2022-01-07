
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int align(int n, int m) {
    int rem = n % m;
    return (rem == 0) ? n : n - rem + m;
}
