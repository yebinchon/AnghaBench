
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; int file_size; } ;
typedef TYPE_1__ mpc_reader_stdio ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_2__ mpc_reader ;
typedef int mpc_int32_t ;


 int MPC_STATUS_FAIL ;
 scalar_t__ STDIO_MAGIC ;

__attribute__((used)) static mpc_int32_t
get_size_stdio(mpc_reader *p_reader)
{
    mpc_reader_stdio *p_stdio = (mpc_reader_stdio*) p_reader->data;
    if(p_stdio->magic != STDIO_MAGIC) return MPC_STATUS_FAIL;
    return p_stdio->file_size;
}
