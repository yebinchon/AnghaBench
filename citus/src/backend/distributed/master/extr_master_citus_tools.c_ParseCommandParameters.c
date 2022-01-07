
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int32 ;
typedef int StringInfo ;
typedef int FunctionCallInfo ;
typedef int Datum ;
typedef int ArrayType ;


 int ArrayObjectCount (int *) ;
 int DatumGetInt32 (int ) ;
 int * DatumGetTextP (int ) ;
 int * DeconstructArrayObject (int *) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int * PG_GETARG_ARRAYTYPE_P (int) ;
 int PG_GETARG_BOOL (int) ;
 int appendStringInfo (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int makeStringInfo () ;
 void* palloc0 (int) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static int
ParseCommandParameters(FunctionCallInfo fcinfo, StringInfo **nodeNameArray,
        int **nodePortsArray, StringInfo **commandStringArray,
        bool *parallel)
{
 ArrayType *nodeNameArrayObject = PG_GETARG_ARRAYTYPE_P(0);
 ArrayType *nodePortArrayObject = PG_GETARG_ARRAYTYPE_P(1);
 ArrayType *commandStringArrayObject = PG_GETARG_ARRAYTYPE_P(2);
 bool parallelExecution = PG_GETARG_BOOL(3);
 int nodeNameCount = ArrayObjectCount(nodeNameArrayObject);
 int nodePortCount = ArrayObjectCount(nodePortArrayObject);
 int commandStringCount = ArrayObjectCount(commandStringArrayObject);
 Datum *nodeNameDatumArray = DeconstructArrayObject(nodeNameArrayObject);
 Datum *nodePortDatumArray = DeconstructArrayObject(nodePortArrayObject);
 Datum *commandStringDatumArray = DeconstructArrayObject(commandStringArrayObject);
 int index = 0;
 StringInfo *nodeNames = ((void*)0);
 int *nodePorts = ((void*)0);
 StringInfo *commandStrings = ((void*)0);

 if (nodeNameCount != nodePortCount || nodeNameCount != commandStringCount)
 {
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("expected same number of node name, port, and query string")));
 }

 nodeNames = palloc0(nodeNameCount * sizeof(StringInfo));
 nodePorts = palloc0(nodeNameCount * sizeof(int));
 commandStrings = palloc0(nodeNameCount * sizeof(StringInfo));

 for (index = 0; index < nodeNameCount; index++)
 {
  text *nodeNameText = DatumGetTextP(nodeNameDatumArray[index]);
  char *nodeName = text_to_cstring(nodeNameText);
  int32 nodePort = DatumGetInt32(nodePortDatumArray[index]);
  text *commandText = DatumGetTextP(commandStringDatumArray[index]);
  char *commandString = text_to_cstring(commandText);

  nodeNames[index] = makeStringInfo();
  commandStrings[index] = makeStringInfo();

  appendStringInfo(nodeNames[index], "%s", nodeName);
  nodePorts[index] = nodePort;
  appendStringInfo(commandStrings[index], "%s", commandString);
 }

 *nodeNameArray = nodeNames;
 *nodePortsArray = nodePorts;
 *commandStringArray = commandStrings;
 *parallel = parallelExecution;

 return nodeNameCount;
}
