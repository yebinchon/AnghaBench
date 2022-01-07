
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int returns; int entry; } ;
struct TYPE_5__ {scalar_t__ defined; } ;
typedef TYPE_1__* Symbol ;
typedef int Apply ;


 int CONST ;
 int EXTERN ;
 scalar_t__ IR ;
 int attach (int ,TYPE_1__*,int *) ;
 int chartype ;
 TYPE_3__ events ;
 int ftype (int ,int ) ;
 int inttype ;
 TYPE_1__* mksymbol (int ,char*,int ) ;
 int ptr (int ) ;
 int qual (int ,int ) ;
 int * strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ tracecall ;
 scalar_t__ tracereturn ;
 int type_init (int,char**) ;

void trace_init(int argc, char *argv[]) {
 int i;
 static int inited;

 if (inited)
  return;
 inited = 1;
 type_init(argc, argv);
 if (IR)
  for (i = 1; i < argc; i++)
   if (strncmp(argv[i], "-t", 2) == 0 && strchr(argv[i], '=') == ((void*)0)) {
    Symbol printer = mksymbol(EXTERN,
     argv[i][2] ? &argv[i][2] : "printf",
    ftype(inttype, ptr(qual(CONST, chartype))));
    printer->defined = 0;
    attach((Apply)tracecall, printer, &events.entry);
    attach((Apply)tracereturn, printer, &events.returns);
    break;
   }
}
