
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ seqcycle; int seqstart; int seqmax; int seqmin; int seqincrement; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_sequence ;


 int CREATE_SEQUENCE_COMMAND ;
 char* generate_qualified_relation_name (int ) ;
 TYPE_1__* pg_get_sequencedef (int ) ;
 char* psprintf (int ,char*,int ,int ,int ,int ,char*) ;

char *
pg_get_sequencedef_string(Oid sequenceRelationId)
{
 char *qualifiedSequenceName = ((void*)0);
 char *sequenceDef = ((void*)0);
 Form_pg_sequence pgSequenceForm = ((void*)0);

 pgSequenceForm = pg_get_sequencedef(sequenceRelationId);


 qualifiedSequenceName = generate_qualified_relation_name(sequenceRelationId);

 sequenceDef = psprintf(CREATE_SEQUENCE_COMMAND, qualifiedSequenceName,
         pgSequenceForm->seqincrement, pgSequenceForm->seqmin,
         pgSequenceForm->seqmax, pgSequenceForm->seqstart,
         pgSequenceForm->seqcycle ? "" : "NO ");

 return sequenceDef;
}
