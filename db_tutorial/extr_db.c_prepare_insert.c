
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * buffer; } ;
struct TYPE_6__ {int id; int email; int username; } ;
struct TYPE_7__ {TYPE_1__ row_to_insert; int type; } ;
typedef TYPE_2__ Statement ;
typedef int PrepareResult ;
typedef TYPE_3__ InputBuffer ;


 scalar_t__ COLUMN_EMAIL_SIZE ;
 scalar_t__ COLUMN_USERNAME_SIZE ;
 int PREPARE_NEGATIVE_ID ;
 int PREPARE_STRING_TOO_LONG ;
 int PREPARE_SUCCESS ;
 int PREPARE_SYNTAX_ERROR ;
 int STATEMENT_INSERT ;
 int atoi (char*) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;
 char* strtok (int *,char*) ;

PrepareResult prepare_insert(InputBuffer* input_buffer, Statement* statement) {
  statement->type = STATEMENT_INSERT;

  char* keyword = strtok(input_buffer->buffer, " ");
  char* id_string = strtok(((void*)0), " ");
  char* username = strtok(((void*)0), " ");
  char* email = strtok(((void*)0), " ");

  if (id_string == ((void*)0) || username == ((void*)0) || email == ((void*)0)) {
    return PREPARE_SYNTAX_ERROR;
  }

  int id = atoi(id_string);
  if (id < 0) {
    return PREPARE_NEGATIVE_ID;
  }
  if (strlen(username) > COLUMN_USERNAME_SIZE) {
    return PREPARE_STRING_TOO_LONG;
  }
  if (strlen(email) > COLUMN_EMAIL_SIZE) {
    return PREPARE_STRING_TOO_LONG;
  }

  statement->row_to_insert.id = id;
  strcpy(statement->row_to_insert.username, username);
  strcpy(statement->row_to_insert.email, email);

  return PREPARE_SUCCESS;
}
