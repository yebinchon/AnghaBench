
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linenoiseState {int dummy; } ;


 scalar_t__ mlmode ;
 int refreshMultiLine (struct linenoiseState*) ;
 int refreshSingleLine (struct linenoiseState*) ;

__attribute__((used)) static void refreshLine(struct linenoiseState *l) {
    if (mlmode)
        refreshMultiLine(l);
    else
        refreshSingleLine(l);
}
