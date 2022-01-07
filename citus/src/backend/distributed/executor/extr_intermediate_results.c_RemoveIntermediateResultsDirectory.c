
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int CitusRemoveDirectory (int ) ;
 int CreatedResultsDirectory ;
 int IntermediateResultsDirectory () ;
 int appendStringInfoString (int ,int ) ;
 int makeStringInfo () ;

void
RemoveIntermediateResultsDirectory(void)
{
 if (CreatedResultsDirectory)
 {
  StringInfo resultsDirectory = makeStringInfo();
  appendStringInfoString(resultsDirectory, IntermediateResultsDirectory());

  CitusRemoveDirectory(resultsDirectory);

  CreatedResultsDirectory = 0;
 }
}
