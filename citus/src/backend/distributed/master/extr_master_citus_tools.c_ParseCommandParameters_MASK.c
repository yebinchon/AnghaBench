#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* FUNC11 (int) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(FunctionCallInfo fcinfo, StringInfo **nodeNameArray,
					   int **nodePortsArray, StringInfo **commandStringArray,
					   bool *parallel)
{
	ArrayType *nodeNameArrayObject = FUNC4(0);
	ArrayType *nodePortArrayObject = FUNC4(1);
	ArrayType *commandStringArrayObject = FUNC4(2);
	bool parallelExecution = FUNC5(3);
	int nodeNameCount = FUNC0(nodeNameArrayObject);
	int nodePortCount = FUNC0(nodePortArrayObject);
	int commandStringCount = FUNC0(commandStringArrayObject);
	Datum *nodeNameDatumArray = FUNC3(nodeNameArrayObject);
	Datum *nodePortDatumArray = FUNC3(nodePortArrayObject);
	Datum *commandStringDatumArray = FUNC3(commandStringArrayObject);
	int index = 0;
	StringInfo *nodeNames = NULL;
	int *nodePorts = NULL;
	StringInfo *commandStrings = NULL;

	if (nodeNameCount != nodePortCount || nodeNameCount != commandStringCount)
	{
		FUNC7(ERROR,
				(FUNC8(ERRCODE_SYNTAX_ERROR),
				 FUNC9("expected same number of node name, port, and query string")));
	}

	nodeNames = FUNC11(nodeNameCount * sizeof(StringInfo));
	nodePorts = FUNC11(nodeNameCount * sizeof(int));
	commandStrings = FUNC11(nodeNameCount * sizeof(StringInfo));

	for (index = 0; index < nodeNameCount; index++)
	{
		text *nodeNameText = FUNC2(nodeNameDatumArray[index]);
		char *nodeName = FUNC12(nodeNameText);
		int32 nodePort = FUNC1(nodePortDatumArray[index]);
		text *commandText = FUNC2(commandStringDatumArray[index]);
		char *commandString = FUNC12(commandText);

		nodeNames[index] = FUNC10();
		commandStrings[index] = FUNC10();

		FUNC6(nodeNames[index], "%s", nodeName);
		nodePorts[index] = nodePort;
		FUNC6(commandStrings[index], "%s", commandString);
	}

	*nodeNameArray = nodeNames;
	*nodePortsArray = nodePorts;
	*commandStringArray = commandStrings;
	*parallel = parallelExecution;

	return nodeNameCount;
}