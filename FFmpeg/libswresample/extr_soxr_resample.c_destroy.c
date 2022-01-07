
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ResampleContext {int dummy; } ;
typedef int soxr_t ;


 int soxr_delete (int ) ;

__attribute__((used)) static void destroy(struct ResampleContext * *c){
    soxr_delete((soxr_t)*c);
    *c = ((void*)0);
}
