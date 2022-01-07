
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmd ;
typedef size_t UINT ;


 int EnableProbe (int) ;
 int FreeCedar () ;
 int FreeMayaqua () ;
 int InitCedar () ;
 int InitMayaqua (int,int,int,char**) ;
 int InitProcessCallOnce () ;
 int MAX_SIZE ;
 int SetHamMode () ;
 int StrCmpi (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int TestMain (int ) ;
 int cmdline ;

int main(int argc, char *argv[])
{
 bool memchk = 0;
 UINT i;
 char cmd[MAX_SIZE];
 char *s;
 int status = 0;

 InitProcessCallOnce();

 cmd[0] = 0;
 if (argc >= 2)
 {
  for (i = 1;i < (UINT)argc;i++)
  {
   s = argv[i];
   if (s[0] == '/')
   {
    if (!StrCmpi(s, "/memcheck"))
    {
     memchk = 1;
    }
   }
   else
   {
    StrCpy(cmd, sizeof(cmd), &s[0]);
   }
  }
 }

 InitMayaqua(memchk, 1, argc, argv);
 EnableProbe(1);
 InitCedar();
 SetHamMode();
 status = TestMain(cmdline);
 FreeCedar();
 FreeMayaqua();

 return status;
}
