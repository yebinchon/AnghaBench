#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ seqcycle; int /*<<< orphan*/  seqstart; int /*<<< orphan*/  seqmax; int /*<<< orphan*/  seqmin; int /*<<< orphan*/  seqincrement; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* Form_pg_sequence ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_SEQUENCE_COMMAND ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

char *
FUNC3(Oid sequenceRelationId)
{
	char *qualifiedSequenceName = NULL;
	char *sequenceDef = NULL;
	Form_pg_sequence pgSequenceForm = NULL;

	pgSequenceForm = FUNC1(sequenceRelationId);

	/* build our DDL command */
	qualifiedSequenceName = FUNC0(sequenceRelationId);

	sequenceDef = FUNC2(CREATE_SEQUENCE_COMMAND, qualifiedSequenceName,
						   pgSequenceForm->seqincrement, pgSequenceForm->seqmin,
						   pgSequenceForm->seqmax, pgSequenceForm->seqstart,
						   pgSequenceForm->seqcycle ? "" : "NO ");

	return sequenceDef;
}