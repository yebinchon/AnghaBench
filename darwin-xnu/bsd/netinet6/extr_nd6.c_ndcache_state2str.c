
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
ndcache_state2str(short ndp_state)
{
 const char *ndp_state_str = "UNKNOWN";
 switch (ndp_state) {
 case 130:
  ndp_state_str = "ND6_LLINFO_PURGE";
  break;
 case 132:
  ndp_state_str = "ND6_LLINFO_NOSTATE";
  break;
 case 133:
  ndp_state_str = "ND6_LLINFO_INCOMPLETE";
  break;
 case 129:
  ndp_state_str = "ND6_LLINFO_REACHABLE";
  break;
 case 128:
  ndp_state_str = "ND6_LLINFO_STALE";
  break;
 case 134:
  ndp_state_str = "ND6_LLINFO_DELAY";
  break;
 case 131:
  ndp_state_str = "ND6_LLINFO_PROBE";
  break;
 default:

  break;
 }
 return ndp_state_str;
}
