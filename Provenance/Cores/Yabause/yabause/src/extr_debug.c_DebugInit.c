
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* string; void (* callback ) (char*) ;int stream; } ;
struct TYPE_6__ {int output_type; TYPE_1__ output; int * name; } ;
typedef int DebugOutType ;
typedef TYPE_2__ Debug ;







 int fopen (char*,char*) ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int stderr ;
 int stdout ;
 int * strdup (char const*) ;

Debug * DebugInit(const char * n, DebugOutType t, char * s) {
 Debug * d;

        if ((d = (Debug *) malloc(sizeof(Debug))) == ((void*)0))
           return ((void*)0);

 d->output_type = t;

        if ((d->name = strdup(n)) == ((void*)0))
        {
           free(d);
           return ((void*)0);
        }

 switch(t) {
 case 129:
                d->output.stream = fopen(s, "w");
  break;
 case 128:
  d->output.string = s;
  break;
 case 130:
  d->output.stream = stdout;
  break;
 case 131:
  d->output.stream = stderr;
  break;
        case 132:
                d->output.callback = (void (*) (char*))s;
         break;
 }

 return d;
}
