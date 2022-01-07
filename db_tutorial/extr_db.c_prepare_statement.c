
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int buffer; } ;
struct TYPE_7__ {int type; } ;
typedef TYPE_1__ Statement ;
typedef int PrepareResult ;
typedef TYPE_2__ InputBuffer ;


 int PREPARE_SUCCESS ;
 int PREPARE_UNRECOGNIZED_STATEMENT ;
 int STATEMENT_SELECT ;
 int prepare_insert (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

PrepareResult prepare_statement(InputBuffer* input_buffer,
                                Statement* statement) {
  if (strncmp(input_buffer->buffer, "insert", 6) == 0) {
    return prepare_insert(input_buffer, statement);
  }
  if (strcmp(input_buffer->buffer, "select") == 0) {
    statement->type = STATEMENT_SELECT;
    return PREPARE_SUCCESS;
  }

  return PREPARE_UNRECOGNIZED_STATEMENT;
}
