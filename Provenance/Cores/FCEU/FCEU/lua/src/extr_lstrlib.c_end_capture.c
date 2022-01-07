
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* capture; } ;
struct TYPE_6__ {char const* len; int init; } ;
typedef TYPE_2__ MatchState ;


 char const* CAP_UNFINISHED ;
 int capture_to_close (TYPE_2__*) ;
 char* match (TYPE_2__*,char const*,char const*) ;

__attribute__((used)) static const char *end_capture (MatchState *ms, const char *s,
                                  const char *p) {
  int l = capture_to_close(ms);
  const char *res;
  ms->capture[l].len = s - ms->capture[l].init;
  if ((res = match(ms, s, p)) == ((void*)0))
    ms->capture[l].len = CAP_UNFINISHED;
  return res;
}
