
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wake_type_t ;


 int EX_USAGE ;
 int WAKE_BROADCAST_ONESEM ;
 int WAKE_BROADCAST_PERTHREAD ;
 int WAKE_CHAIN ;
 int WAKE_HOP ;
 int errx (int ,char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static wake_type_t
parse_wakeup_pattern(const char *str)
{
 if (strcmp(str, "chain") == 0) {
  return WAKE_CHAIN;
 } else if (strcmp(str, "hop") == 0) {
  return WAKE_HOP;
 } else if (strcmp(str, "broadcast-single-sem") == 0) {
  return WAKE_BROADCAST_ONESEM;
 } else if (strcmp(str, "broadcast-per-thread") == 0) {
  return WAKE_BROADCAST_PERTHREAD;
 } else {
  errx(EX_USAGE, "Invalid wakeup pattern \"%s\"", str);
 }
}
