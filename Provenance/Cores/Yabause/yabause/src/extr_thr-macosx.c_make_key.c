
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hnd_key ;
 int pthread_key_create (int *,int *) ;

__attribute__((used)) static void make_key() {
    pthread_key_create(&hnd_key, ((void*)0));
}
