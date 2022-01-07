
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string; void (* callback ) (char*) ;scalar_t__ stream; } ;
struct TYPE_5__ {int output_type; TYPE_1__ output; } ;
typedef int DebugOutType ;
typedef TYPE_2__ Debug ;







 int fclose (scalar_t__) ;
 scalar_t__ fopen (char*,char*) ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;

void DebugChangeOutput(Debug * d, DebugOutType t, char * s) {
 if (t != d->output_type) {
  if (d->output_type == 129)
                {
                   if (d->output.stream)
   fclose(d->output.stream);
                }
  d->output_type = t;
 }
 switch(t) {
 case 129:
  d->output.stream = fopen(s, "w");
  break;
 case 128:
  d->output.string = s;
  break;
 case 132:
                  d->output.callback = (void (*) (char*))s;
    break;
 case 130:
  d->output.stream = stdout;
  break;
 case 131:
  d->output.stream = stderr;
  break;
 }
}
