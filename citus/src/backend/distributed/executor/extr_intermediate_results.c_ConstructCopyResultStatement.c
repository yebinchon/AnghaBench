
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfo (int ,char*,char const*) ;
 int makeStringInfo () ;

__attribute__((used)) static StringInfo
ConstructCopyResultStatement(const char *resultId)
{
 StringInfo command = makeStringInfo();

 appendStringInfo(command, "COPY \"%s\" FROM STDIN WITH (format result)",
      resultId);

 return command;
}
