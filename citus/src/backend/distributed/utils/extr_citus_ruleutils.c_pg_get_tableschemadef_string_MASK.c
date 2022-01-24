#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
struct TYPE_26__ {size_t num_defval; size_t num_check; TYPE_9__* check; TYPE_10__* defval; } ;
typedef  TYPE_3__ TupleConstr ;
struct TYPE_32__ {char* ccname; int /*<<< orphan*/  ccbin; } ;
struct TYPE_31__ {char* servername; } ;
struct TYPE_30__ {int /*<<< orphan*/  options; int /*<<< orphan*/  serverid; } ;
struct TYPE_29__ {scalar_t__ attgenerated; scalar_t__ attcollation; scalar_t__ attnotnull; scalar_t__ atthasdef; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; int /*<<< orphan*/  attisdropped; } ;
struct TYPE_28__ {TYPE_1__* rd_rel; } ;
struct TYPE_27__ {char* data; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_25__ {int natts; TYPE_3__* constr; } ;
struct TYPE_24__ {scalar_t__ relpersistence; char relkind; } ;
struct TYPE_23__ {int adnum; int /*<<< orphan*/  adbin; } ;
typedef  TYPE_4__ StringInfoData ;
typedef  TYPE_5__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_6__* Form_pg_attribute ;
typedef  TYPE_7__ ForeignTable ;
typedef  TYPE_8__ ForeignServer ;
typedef  TYPE_9__ ConstrCheck ;
typedef  size_t AttrNumber ;
typedef  TYPE_10__ AttrDefault ;

/* Variables and functions */
 scalar_t__ ATTRIBUTE_GENERATED_STORED ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  NIL ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char RELKIND_FOREIGN_TABLE ; 
 char RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELPERSISTENCE_UNLOGGED ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_5__*) ; 
 TYPE_6__* FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC17 (scalar_t__) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 char* FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 

char *
FUNC25(Oid tableRelationId, bool includeSequenceDefaults)
{
	Relation relation = NULL;
	char *relationName = NULL;
	char relationKind = 0;
	TupleDesc tupleDescriptor = NULL;
	TupleConstr *tupleConstraints = NULL;
	int attributeIndex = 0;
	bool firstAttributePrinted = false;
	AttrNumber defaultValueIndex = 0;
	AttrNumber constraintIndex = 0;
	AttrNumber constraintCount = 0;
	StringInfoData buffer = { NULL, 0, 0, 0 };

	/*
	 * Instead of retrieving values from system catalogs as other functions in
	 * ruleutils.c do, we follow an unusual approach here: we open the relation,
	 * and fetch the relation's tuple descriptor. We do this because the tuple
	 * descriptor already contains information harnessed from pg_attrdef,
	 * pg_attribute, pg_constraint, and pg_class; and therefore using the
	 * descriptor saves us from a lot of additional work.
	 */
	relation = FUNC23(tableRelationId, AccessShareLock);
	relationName = FUNC18(tableRelationId, NIL);

	FUNC2(tableRelationId);

	FUNC19(&buffer);

	if (FUNC7(tableRelationId))
	{
		FUNC11(&buffer, "CREATE ");

		if (relation->rd_rel->relpersistence == RELPERSISTENCE_UNLOGGED)
		{
			FUNC11(&buffer, "UNLOGGED ");
		}

		FUNC10(&buffer, "TABLE %s (", relationName);
	}
	else
	{
		FUNC10(&buffer, "CREATE FOREIGN TABLE %s (", relationName);
	}

	/*
	 * Iterate over the table's columns. If a particular column is not dropped
	 * and is not inherited from another table, print the column's name and its
	 * formatted type.
	 */
	tupleDescriptor = FUNC8(relation);
	tupleConstraints = tupleDescriptor->constr;

	for (attributeIndex = 0; attributeIndex < tupleDescriptor->natts; attributeIndex++)
	{
		Form_pg_attribute attributeForm = FUNC9(tupleDescriptor, attributeIndex);

		/*
		 * We disregard the inherited attributes (i.e., attinhcount > 0) here. The
		 * reasoning behind this is that Citus implements declarative partitioning
		 * by creating the partitions first and then sending
		 * "ALTER TABLE parent_table ATTACH PARTITION .." command. This may not play
		 * well with regular inherited tables, which isn't a big concern from Citus'
		 * perspective.
		 */
		if (!attributeForm->attisdropped)
		{
			const char *attributeName = NULL;
			const char *attributeTypeName = NULL;

			if (firstAttributePrinted)
			{
				FUNC11(&buffer, ", ");
			}
			firstAttributePrinted = true;

			attributeName = FUNC6(attributeForm->attname);
			FUNC10(&buffer, "%s ", FUNC21(attributeName));

			attributeTypeName = FUNC16(attributeForm->atttypid,
														 attributeForm->atttypmod);
			FUNC11(&buffer, attributeTypeName);

			/* if this column has a default value, append the default value */
			if (attributeForm->atthasdef)
			{
				AttrDefault *defaultValueList = NULL;
				AttrDefault *defaultValue = NULL;

				Node *defaultNode = NULL;
				List *defaultContext = NULL;
				char *defaultString = NULL;

				FUNC1(tupleConstraints != NULL);

				defaultValueList = tupleConstraints->defval;
				FUNC1(defaultValueList != NULL);

				defaultValue = &(defaultValueList[defaultValueIndex]);
				defaultValueIndex++;

				FUNC1(defaultValue->adnum == (attributeIndex + 1));
				FUNC1(defaultValueIndex <= tupleConstraints->num_defval);

				/* convert expression to node tree, and prepare deparse context */
				defaultNode = (Node *) FUNC24(defaultValue->adbin);

				/*
				 * if column default value is explicitly requested, or it is
				 * not set from a sequence then we include DEFAULT clause for
				 * this column.
				 */
				if (includeSequenceDefaults ||
					!FUNC12(defaultNode, NULL))
				{
					defaultContext = FUNC13(relationName, tableRelationId);

					/* deparse default value string */
					defaultString = FUNC14(defaultNode, defaultContext,
													   false, false);

#if PG_VERSION_NUM >= 120000
					if (attributeForm->attgenerated == ATTRIBUTE_GENERATED_STORED)
					{
						appendStringInfo(&buffer, " GENERATED ALWAYS AS (%s) STORED",
										 defaultString);
					}
					else
					{
						appendStringInfo(&buffer, " DEFAULT %s", defaultString);
					}
#else
					FUNC10(&buffer, " DEFAULT %s", defaultString);
#endif
				}
			}

			/* if this column has a not null constraint, append the constraint */
			if (attributeForm->attnotnull)
			{
				FUNC11(&buffer, " NOT NULL");
			}

			if (attributeForm->attcollation != InvalidOid &&
				attributeForm->attcollation != DEFAULT_COLLATION_OID)
			{
				FUNC10(&buffer, " COLLATE %s", FUNC17(
									 attributeForm->attcollation));
			}
		}
	}

	/*
	 * Now check if the table has any constraints. If it does, set the number of
	 * check constraints here. Then iterate over all check constraints and print
	 * them.
	 */
	if (tupleConstraints != NULL)
	{
		constraintCount = tupleConstraints->num_check;
	}

	for (constraintIndex = 0; constraintIndex < constraintCount; constraintIndex++)
	{
		ConstrCheck *checkConstraintList = tupleConstraints->check;
		ConstrCheck *checkConstraint = &(checkConstraintList[constraintIndex]);

		Node *checkNode = NULL;
		List *checkContext = NULL;
		char *checkString = NULL;

		/* if an attribute or constraint has been printed, format properly */
		if (firstAttributePrinted || constraintIndex > 0)
		{
			FUNC11(&buffer, ", ");
		}

		FUNC10(&buffer, "CONSTRAINT %s CHECK ",
						 FUNC21(checkConstraint->ccname));

		/* convert expression to node tree, and prepare deparse context */
		checkNode = (Node *) FUNC24(checkConstraint->ccbin);
		checkContext = FUNC13(relationName, tableRelationId);

		/* deparse check constraint string */
		checkString = FUNC14(checkNode, checkContext, false, false);

		FUNC11(&buffer, checkString);
	}

	/* close create table's outer parentheses */
	FUNC11(&buffer, ")");

	/*
	 * If the relation is a foreign table, append the server name and options to
	 * the create table statement.
	 */
	relationKind = relation->rd_rel->relkind;
	if (relationKind == RELKIND_FOREIGN_TABLE)
	{
		ForeignTable *foreignTable = FUNC5(tableRelationId);
		ForeignServer *foreignServer = FUNC4(foreignTable->serverid);

		char *serverName = foreignServer->servername;
		FUNC10(&buffer, " SERVER %s", FUNC21(serverName));
		FUNC0(&buffer, foreignTable->options);
	}
	else if (relationKind == RELKIND_PARTITIONED_TABLE)
	{
		char *partitioningInformation = FUNC3(tableRelationId);
		FUNC10(&buffer, " PARTITION BY %s ", partitioningInformation);
	}

	/*
	 * Add any reloptions (storage parameters) defined on the table in a WITH
	 * clause.
	 */
	{
		char *reloptions = FUNC15(tableRelationId);
		if (reloptions)
		{
			FUNC10(&buffer, " WITH (%s)", reloptions);
			FUNC20(reloptions);
		}
	}

	FUNC22(relation, AccessShareLock);

	return (buffer.data);
}