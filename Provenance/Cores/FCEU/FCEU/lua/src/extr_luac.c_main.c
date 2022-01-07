
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Smain {int argc; char** argv; } ;
typedef int lua_State ;


 int EXIT_SUCCESS ;
 int doargs (int,char**) ;
 int fatal (char*) ;
 int lua_close (int *) ;
 scalar_t__ lua_cpcall (int *,int ,struct Smain*) ;
 int * lua_open () ;
 char* lua_tostring (int *,int) ;
 int pmain ;
 int usage (char*) ;

int main(int argc, char* argv[])
{
 lua_State* L;
 struct Smain s;
 int i=doargs(argc,argv);
 argc-=i; argv+=i;
 if (argc<=0) usage("no input files given");
 L=lua_open();
 if (L==((void*)0)) fatal("not enough memory for state");
 s.argc=argc;
 s.argv=argv;
 if (lua_cpcall(L,pmain,&s)!=0) fatal(lua_tostring(L,-1));
 lua_close(L);
 return EXIT_SUCCESS;
}
