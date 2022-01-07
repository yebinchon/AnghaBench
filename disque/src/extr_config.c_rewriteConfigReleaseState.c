
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewriteConfigState {int rewritten; int option_to_line; int numlines; int lines; } ;


 int dictRelease (int ) ;
 int sdsfreesplitres (int ,int ) ;
 int zfree (struct rewriteConfigState*) ;

void rewriteConfigReleaseState(struct rewriteConfigState *state) {
    sdsfreesplitres(state->lines,state->numlines);
    dictRelease(state->option_to_line);
    dictRelease(state->rewritten);
    zfree(state);
}
