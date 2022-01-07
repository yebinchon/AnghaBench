
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RAND_MAX ;
 scalar_t__ rand () ;

double rand_double() {
    return (double)rand() / (double)RAND_MAX;
}
