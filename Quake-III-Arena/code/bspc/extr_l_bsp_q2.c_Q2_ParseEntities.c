
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_t ;


 int FreeScript (int *) ;
 int * LoadScriptMemory (int ,int ,char*) ;
 scalar_t__ ParseEntity (int *) ;
 int SCFL_NOSTRINGESCAPECHARS ;
 int SCFL_NOSTRINGWHITESPACES ;
 int SetScriptFlags (int *,int) ;
 int dentdata ;
 int entdatasize ;
 scalar_t__ num_entities ;

void Q2_ParseEntities (void)
{
 script_t *script;

 num_entities = 0;
 script = LoadScriptMemory(dentdata, entdatasize, "*Quake2 bsp file");
 SetScriptFlags(script, SCFL_NOSTRINGWHITESPACES |
         SCFL_NOSTRINGESCAPECHARS);

 while(ParseEntity(script))
 {
 }

 FreeScript(script);
}
