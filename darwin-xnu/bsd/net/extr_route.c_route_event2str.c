
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
route_event2str(int route_event)
{
 const char *route_event_str = "ROUTE_EVENT_UNKNOWN";
 switch (route_event) {
  case 128:
   route_event_str = "ROUTE_STATUS_UPDATE";
   break;
  case 138:
   route_event_str = "ROUTE_ENTRY_REFRESH";
   break;
  case 139:
   route_event_str = "ROUTE_ENTRY_DELETED";
   break;
  case 132:
   route_event_str = "ROUTE_LLENTRY_RESOLVED";
   break;
  case 129:
   route_event_str = "ROUTE_LLENTRY_UNREACH";
   break;
  case 136:
   route_event_str = "ROUTE_LLENTRY_CHANGED";
   break;
  case 131:
   route_event_str = "ROUTE_LLENTRY_STALE";
   break;
  case 130:
   route_event_str = "ROUTE_LLENTRY_TIMEDOUT";
   break;
  case 135:
   route_event_str = "ROUTE_LLENTRY_DELETED";
   break;
  case 134:
   route_event_str = "ROUTE_LLENTRY_EXPIRED";
   break;
  case 133:
   route_event_str = "ROUTE_LLENTRY_PROBED";
   break;
  case 137:
   route_event_str = "ROUTE_EVHDLR_DEREGISTER";
   break;
  default:

   break;
 }
 return route_event_str;
}
