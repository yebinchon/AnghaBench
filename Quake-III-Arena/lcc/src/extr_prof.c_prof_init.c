
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct map {scalar_t__ size; } ;
struct TYPE_6__ {int points; int calls; int end; int exit; int returns; int entry; } ;
struct TYPE_5__ {scalar_t__ x; } ;
typedef int Apply ;


 int GLOBAL ;
 scalar_t__ IR ;
 int PERM ;
 int STATIC ;
 scalar_t__ YYcounts ;
 scalar_t__ YYlink ;
 int allocate (int,int ) ;
 TYPE_1__* append (int ,TYPE_1__*) ;
 int array (int ,int ,int ) ;
 int attach (int ,scalar_t__,int *) ;
 scalar_t__ bbcall ;
 scalar_t__ bbentry ;
 scalar_t__ bbexit ;
 scalar_t__ bbfunc ;
 scalar_t__ bbincr ;
 scalar_t__ bbvars ;
 TYPE_2__ events ;
 scalar_t__ genident (int ,int ,int ) ;
 TYPE_1__* maplist ;
 int ncalled ;
 scalar_t__ process (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int type_init (int,char**) ;
 int unsignedtype ;

void prof_init(int argc, char *argv[]) {
 int i;
 static int inited;

 if (inited)
  return;
 inited = 1;
 type_init(argc, argv);
 if (IR)
  for (i = 1; i < argc; i++)
   if (strncmp(argv[i], "-a", 2) == 0) {
    if (ncalled == -1
    && process(argv[i][2] ? &argv[i][2] : "prof.out") > 0)
     ncalled = 0;
   } else if ((strcmp(argv[i], "-b") == 0
            || strcmp(argv[i], "-C") == 0) && YYlink == 0) {
    YYlink = genident(STATIC, array(unsignedtype, 0, 0), GLOBAL);
    attach((Apply)bbentry, YYlink, &events.entry);
    attach((Apply)bbexit, YYlink, &events.returns);
    attach((Apply)bbfunc, YYlink, &events.exit);
    attach((Apply)bbvars, YYlink, &events.end);
    if (strcmp(argv[i], "-b") == 0) {
     YYcounts = genident(STATIC, array(unsignedtype, 0, 0), GLOBAL);
     maplist = append(allocate(sizeof (struct map), PERM), maplist);
     ((struct map *)maplist->x)->size = 0;
     attach((Apply)bbcall, YYcounts, &events.calls);
     attach((Apply)bbincr, YYcounts, &events.points);
    }
   }
}
