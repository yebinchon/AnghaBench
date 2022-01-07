
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pager; } ;
typedef TYPE_1__ Table ;
struct TYPE_8__ {int buffer; } ;
typedef int MetaCommandResult ;
typedef TYPE_2__ InputBuffer ;


 int EXIT_SUCCESS ;
 int META_COMMAND_SUCCESS ;
 int META_COMMAND_UNRECOGNIZED_COMMAND ;
 int close_input_buffer (TYPE_2__*) ;
 int db_close (TYPE_1__*) ;
 int exit (int ) ;
 int print_constants () ;
 int print_tree (int ,int ,int ) ;
 int printf (char*) ;
 scalar_t__ strcmp (int ,char*) ;

MetaCommandResult do_meta_command(InputBuffer* input_buffer, Table* table) {
  if (strcmp(input_buffer->buffer, ".exit") == 0) {
    close_input_buffer(input_buffer);
    db_close(table);
    exit(EXIT_SUCCESS);
  } else if (strcmp(input_buffer->buffer, ".btree") == 0) {
    printf("Tree:\n");
    print_tree(table->pager, 0, 0);
    return META_COMMAND_SUCCESS;
  } else if (strcmp(input_buffer->buffer, ".constants") == 0) {
    printf("Constants:\n");
    print_constants();
    return META_COMMAND_SUCCESS;
  } else {
    return META_COMMAND_UNRECOGNIZED_COMMAND;
  }
}
