
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oggpack_buffer ;


 int oggpack_write (int *,int ,int) ;

__attribute__((used)) static void _v_writestring(oggpack_buffer *o,const char *s, int bytes){

  while(bytes--){
    oggpack_write(o,*s++,8);
  }
}
