
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int is_saved_state64 (void*) ;

boolean_t ml_state_is64bit(void *saved_state) {

 return is_saved_state64(saved_state);
}
