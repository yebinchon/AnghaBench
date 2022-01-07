
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aof_pipe_read_ack_from_parent; int aof_pipe_write_ack_to_child; int aof_pipe_read_ack_from_child; int aof_pipe_write_ack_to_parent; int aof_pipe_read_data_from_parent; int aof_pipe_write_data_to_child; int el; } ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int aeDeleteFileEvent (int ,int ,int ) ;
 int close (int ) ;
 TYPE_1__ server ;

void aofClosePipes(void) {
    aeDeleteFileEvent(server.el,server.aof_pipe_read_ack_from_child,AE_READABLE);
    aeDeleteFileEvent(server.el,server.aof_pipe_write_data_to_child,AE_WRITABLE);
    close(server.aof_pipe_write_data_to_child);
    close(server.aof_pipe_read_data_from_parent);
    close(server.aof_pipe_write_ack_to_parent);
    close(server.aof_pipe_read_ack_from_child);
    close(server.aof_pipe_write_ack_to_child);
    close(server.aof_pipe_read_ack_from_parent);
}
