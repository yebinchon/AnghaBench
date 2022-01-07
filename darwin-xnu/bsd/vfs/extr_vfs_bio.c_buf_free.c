
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf_t ;


 int free_io_buf (int ) ;

void
buf_free(buf_t bp) {

        free_io_buf(bp);
}
