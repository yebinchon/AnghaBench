
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AddScriptToStack (char const*) ;
 void* endofscript ;
 void* qfalse ;
 int script ;
 int scriptstack ;
 void* tokenready ;

void LoadScriptFile( const char *filename ) {
 script = scriptstack;
 AddScriptToStack (filename);

 endofscript = qfalse;
 tokenready = qfalse;
}
