
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_CHEAT ;
 void* Cvar_Get (char*,char*,int ) ;
 void* cl_debuggraph ;
 void* cl_graphheight ;
 void* cl_graphscale ;
 void* cl_graphshift ;
 void* cl_timegraph ;
 int qtrue ;
 int scr_initialized ;

void SCR_Init( void ) {
 cl_timegraph = Cvar_Get ("timegraph", "0", CVAR_CHEAT);
 cl_debuggraph = Cvar_Get ("debuggraph", "0", CVAR_CHEAT);
 cl_graphheight = Cvar_Get ("graphheight", "32", CVAR_CHEAT);
 cl_graphscale = Cvar_Get ("graphscale", "1", CVAR_CHEAT);
 cl_graphshift = Cvar_Get ("graphshift", "0", CVAR_CHEAT);

 scr_initialized = qtrue;
}
