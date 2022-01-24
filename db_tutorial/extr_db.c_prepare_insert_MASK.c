#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * buffer; } ;
struct TYPE_6__ {int id; int /*<<< orphan*/  email; int /*<<< orphan*/  username; } ;
struct TYPE_7__ {TYPE_1__ row_to_insert; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ Statement ;
typedef  int /*<<< orphan*/  PrepareResult ;
typedef  TYPE_3__ InputBuffer ;

/* Variables and functions */
 scalar_t__ COLUMN_EMAIL_SIZE ; 
 scalar_t__ COLUMN_USERNAME_SIZE ; 
 int /*<<< orphan*/  PREPARE_NEGATIVE_ID ; 
 int /*<<< orphan*/  PREPARE_STRING_TOO_LONG ; 
 int /*<<< orphan*/  PREPARE_SUCCESS ; 
 int /*<<< orphan*/  PREPARE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  STATEMENT_INSERT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 

PrepareResult FUNC4(InputBuffer* input_buffer, Statement* statement) {
  statement->type = STATEMENT_INSERT;

  char* keyword = FUNC3(input_buffer->buffer, " ");
  char* id_string = FUNC3(NULL, " ");
  char* username = FUNC3(NULL, " ");
  char* email = FUNC3(NULL, " ");

  if (id_string == NULL || username == NULL || email == NULL) {
    return PREPARE_SYNTAX_ERROR;
  }

  int id = FUNC0(id_string);
  if (id < 0) {
    return PREPARE_NEGATIVE_ID;
  }
  if (FUNC2(username) > COLUMN_USERNAME_SIZE) {
    return PREPARE_STRING_TOO_LONG;
  }
  if (FUNC2(email) > COLUMN_EMAIL_SIZE) {
    return PREPARE_STRING_TOO_LONG;
  }

  statement->row_to_insert.id = id;
  FUNC1(statement->row_to_insert.username, username);
  FUNC1(statement->row_to_insert.email, email);

  return PREPARE_SUCCESS;
}