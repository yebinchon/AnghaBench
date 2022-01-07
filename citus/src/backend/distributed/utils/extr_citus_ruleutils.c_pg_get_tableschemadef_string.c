
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_26__ {size_t num_defval; size_t num_check; TYPE_9__* check; TYPE_10__* defval; } ;
typedef TYPE_3__ TupleConstr ;
struct TYPE_32__ {char* ccname; int ccbin; } ;
struct TYPE_31__ {char* servername; } ;
struct TYPE_30__ {int options; int serverid; } ;
struct TYPE_29__ {scalar_t__ attgenerated; scalar_t__ attcollation; scalar_t__ attnotnull; scalar_t__ atthasdef; int atttypmod; int atttypid; int attname; int attisdropped; } ;
struct TYPE_28__ {TYPE_1__* rd_rel; } ;
struct TYPE_27__ {char* data; int member_3; int member_2; int member_1; int * member_0; } ;
struct TYPE_25__ {int natts; TYPE_3__* constr; } ;
struct TYPE_24__ {scalar_t__ relpersistence; char relkind; } ;
struct TYPE_23__ {int adnum; int adbin; } ;
typedef TYPE_4__ StringInfoData ;
typedef TYPE_5__* Relation ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef TYPE_6__* Form_pg_attribute ;
typedef TYPE_7__ ForeignTable ;
typedef TYPE_8__ ForeignServer ;
typedef TYPE_9__ ConstrCheck ;
typedef size_t AttrNumber ;
typedef TYPE_10__ AttrDefault ;


 scalar_t__ ATTRIBUTE_GENERATED_STORED ;
 int AccessShareLock ;
 int AppendOptionListToString (TYPE_4__*,int ) ;
 int Assert (int) ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int EnsureRelationKindSupported (int ) ;
 char* GeneratePartitioningInformation (int ) ;
 TYPE_8__* GetForeignServer (int ) ;
 TYPE_7__* GetForeignTable (int ) ;
 scalar_t__ InvalidOid ;
 int NIL ;
 char* NameStr (int ) ;
 char RELKIND_FOREIGN_TABLE ;
 char RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELPERSISTENCE_UNLOGGED ;
 scalar_t__ RegularTable (int ) ;
 TYPE_2__* RelationGetDescr (TYPE_5__*) ;
 TYPE_6__* TupleDescAttr (TYPE_2__*,int) ;
 int appendStringInfo (TYPE_4__*,char*,char*) ;
 int appendStringInfoString (TYPE_4__*,char const*) ;
 int contain_nextval_expression_walker (int *,int *) ;
 int * deparse_context_for (char*,int ) ;
 char* deparse_expression (int *,int *,int,int) ;
 char* flatten_reloptions (int ) ;
 char* format_type_with_typemod (int ,int ) ;
 char* generate_collation_name (scalar_t__) ;
 char* generate_relation_name (int ,int ) ;
 int initStringInfo (TYPE_4__*) ;
 int pfree (char*) ;
 char* quote_identifier (char const*) ;
 int relation_close (TYPE_5__*,int ) ;
 TYPE_5__* relation_open (int ,int ) ;
 scalar_t__ stringToNode (int ) ;

char *
pg_get_tableschemadef_string(Oid tableRelationId, bool includeSequenceDefaults)
{
 Relation relation = ((void*)0);
 char *relationName = ((void*)0);
 char relationKind = 0;
 TupleDesc tupleDescriptor = ((void*)0);
 TupleConstr *tupleConstraints = ((void*)0);
 int attributeIndex = 0;
 bool firstAttributePrinted = 0;
 AttrNumber defaultValueIndex = 0;
 AttrNumber constraintIndex = 0;
 AttrNumber constraintCount = 0;
 StringInfoData buffer = { ((void*)0), 0, 0, 0 };
 relation = relation_open(tableRelationId, AccessShareLock);
 relationName = generate_relation_name(tableRelationId, NIL);

 EnsureRelationKindSupported(tableRelationId);

 initStringInfo(&buffer);

 if (RegularTable(tableRelationId))
 {
  appendStringInfoString(&buffer, "CREATE ");

  if (relation->rd_rel->relpersistence == RELPERSISTENCE_UNLOGGED)
  {
   appendStringInfoString(&buffer, "UNLOGGED ");
  }

  appendStringInfo(&buffer, "TABLE %s (", relationName);
 }
 else
 {
  appendStringInfo(&buffer, "CREATE FOREIGN TABLE %s (", relationName);
 }






 tupleDescriptor = RelationGetDescr(relation);
 tupleConstraints = tupleDescriptor->constr;

 for (attributeIndex = 0; attributeIndex < tupleDescriptor->natts; attributeIndex++)
 {
  Form_pg_attribute attributeForm = TupleDescAttr(tupleDescriptor, attributeIndex);
  if (!attributeForm->attisdropped)
  {
   const char *attributeName = ((void*)0);
   const char *attributeTypeName = ((void*)0);

   if (firstAttributePrinted)
   {
    appendStringInfoString(&buffer, ", ");
   }
   firstAttributePrinted = 1;

   attributeName = NameStr(attributeForm->attname);
   appendStringInfo(&buffer, "%s ", quote_identifier(attributeName));

   attributeTypeName = format_type_with_typemod(attributeForm->atttypid,
               attributeForm->atttypmod);
   appendStringInfoString(&buffer, attributeTypeName);


   if (attributeForm->atthasdef)
   {
    AttrDefault *defaultValueList = ((void*)0);
    AttrDefault *defaultValue = ((void*)0);

    Node *defaultNode = ((void*)0);
    List *defaultContext = ((void*)0);
    char *defaultString = ((void*)0);

    Assert(tupleConstraints != ((void*)0));

    defaultValueList = tupleConstraints->defval;
    Assert(defaultValueList != ((void*)0));

    defaultValue = &(defaultValueList[defaultValueIndex]);
    defaultValueIndex++;

    Assert(defaultValue->adnum == (attributeIndex + 1));
    Assert(defaultValueIndex <= tupleConstraints->num_defval);


    defaultNode = (Node *) stringToNode(defaultValue->adbin);






    if (includeSequenceDefaults ||
     !contain_nextval_expression_walker(defaultNode, ((void*)0)))
    {
     defaultContext = deparse_context_for(relationName, tableRelationId);


     defaultString = deparse_expression(defaultNode, defaultContext,
                0, 0);
     appendStringInfo(&buffer, " DEFAULT %s", defaultString);

    }
   }


   if (attributeForm->attnotnull)
   {
    appendStringInfoString(&buffer, " NOT NULL");
   }

   if (attributeForm->attcollation != InvalidOid &&
    attributeForm->attcollation != DEFAULT_COLLATION_OID)
   {
    appendStringInfo(&buffer, " COLLATE %s", generate_collation_name(
          attributeForm->attcollation));
   }
  }
 }






 if (tupleConstraints != ((void*)0))
 {
  constraintCount = tupleConstraints->num_check;
 }

 for (constraintIndex = 0; constraintIndex < constraintCount; constraintIndex++)
 {
  ConstrCheck *checkConstraintList = tupleConstraints->check;
  ConstrCheck *checkConstraint = &(checkConstraintList[constraintIndex]);

  Node *checkNode = ((void*)0);
  List *checkContext = ((void*)0);
  char *checkString = ((void*)0);


  if (firstAttributePrinted || constraintIndex > 0)
  {
   appendStringInfoString(&buffer, ", ");
  }

  appendStringInfo(&buffer, "CONSTRAINT %s CHECK ",
       quote_identifier(checkConstraint->ccname));


  checkNode = (Node *) stringToNode(checkConstraint->ccbin);
  checkContext = deparse_context_for(relationName, tableRelationId);


  checkString = deparse_expression(checkNode, checkContext, 0, 0);

  appendStringInfoString(&buffer, checkString);
 }


 appendStringInfoString(&buffer, ")");





 relationKind = relation->rd_rel->relkind;
 if (relationKind == RELKIND_FOREIGN_TABLE)
 {
  ForeignTable *foreignTable = GetForeignTable(tableRelationId);
  ForeignServer *foreignServer = GetForeignServer(foreignTable->serverid);

  char *serverName = foreignServer->servername;
  appendStringInfo(&buffer, " SERVER %s", quote_identifier(serverName));
  AppendOptionListToString(&buffer, foreignTable->options);
 }
 else if (relationKind == RELKIND_PARTITIONED_TABLE)
 {
  char *partitioningInformation = GeneratePartitioningInformation(tableRelationId);
  appendStringInfo(&buffer, " PARTITION BY %s ", partitioningInformation);
 }





 {
  char *reloptions = flatten_reloptions(tableRelationId);
  if (reloptions)
  {
   appendStringInfo(&buffer, " WITH (%s)", reloptions);
   pfree(reloptions);
  }
 }

 relation_close(relation, AccessShareLock);

 return (buffer.data);
}
