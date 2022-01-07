
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int free (void*) ;
 int printf (char*,char*) ;
 int stub_state_post_print (void*) ;
 int stub_state_pre_print (void*) ;

__attribute__((used)) static int stub_read_bin(
        void * s,
        uint32_t len,
        void * data
){
 stub_state_pre_print(data);
 printf("b'%s'", (char*)s);
 stub_state_post_print(data);
 free(s);
 return 0;
}
