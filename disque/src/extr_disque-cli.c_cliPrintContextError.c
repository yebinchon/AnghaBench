
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* errstr; } ;


 TYPE_1__* context ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void cliPrintContextError(void) {
    if (context == ((void*)0)) return;
    fprintf(stderr,"Error: %s\n",context->errstr);
}
