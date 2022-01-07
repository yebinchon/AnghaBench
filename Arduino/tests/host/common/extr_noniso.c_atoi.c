
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atol (char const*) ;

int atoi(const char* s) {
    return (int) atol(s);
}
