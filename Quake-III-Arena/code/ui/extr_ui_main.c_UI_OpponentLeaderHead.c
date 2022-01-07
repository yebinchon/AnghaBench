
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* UI_AIFromName (char const*) ;
 char* UI_OpponentLeaderName () ;

__attribute__((used)) static const char *UI_OpponentLeaderHead() {
 const char *leader = UI_OpponentLeaderName();
 return UI_AIFromName(leader);
}
