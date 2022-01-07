
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32_t ;
struct TYPE_3__ {scalar_t__ cli_op; scalar_t__ status_op; } ;
typedef TYPE_1__ bt_mesh_client_op_pair_t ;



__attribute__((used)) static u32_t bt_mesh_client_get_status_op(const bt_mesh_client_op_pair_t *op_pair,
        int size, u32_t opcode)
{
    if (!op_pair || size == 0) {
        return 0;
    }

    const bt_mesh_client_op_pair_t *op = op_pair;
    for (int i = 0; i < size; i++) {
        if (op->cli_op == opcode) {
            return op->status_op;
        }
        op++;
    }

    return 0;
}
