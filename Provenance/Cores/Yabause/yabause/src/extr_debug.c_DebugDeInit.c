
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stream; } ;
struct TYPE_6__ {int output_type; struct TYPE_6__* name; TYPE_1__ output; } ;
typedef TYPE_2__ Debug ;







 int fclose (int ) ;
 int free (TYPE_2__*) ;

void DebugDeInit(Debug * d) {
        if (d == ((void*)0))
           return;

 switch(d->output_type) {
 case 129:
                if (d->output.stream)
                   fclose(d->output.stream);
  break;
 case 128:
 case 130:
 case 131:
 case 132:
  break;
 }
        if (d->name)
           free(d->name);
 free(d);
}
