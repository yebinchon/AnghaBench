
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abuf {scalar_t__ len; int * b; } ;



__attribute__((used)) static void abInit(struct abuf *ab) {
    ab->b = ((void*)0);
    ab->len = 0;
}
