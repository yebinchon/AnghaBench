
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static void callbackValDestructor(void *privdata, void *val) {
    ((void) privdata);
    free(val);
}
