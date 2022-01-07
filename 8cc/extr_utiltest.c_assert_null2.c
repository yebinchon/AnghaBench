
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,int) ;

__attribute__((used)) static void assert_null2(int line, void *p) {
    if (p)
        error("%d: Null expected", line);
}
