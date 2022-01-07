
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * strupnperror(int err)
{
 const char * s = ((void*)0);
 switch(err) {
 case 131:
  s = "Success";
  break;
 case 130:
  s = "Miniupnpc Unknown Error";
  break;
 case 133:
  s = "Miniupnpc Invalid Arguments";
  break;
 case 132:
  s = "Miniupnpc Invalid response";
  break;
 case 128:
  s = "Miniupnpc Socket error";
  break;
 case 129:
  s = "Miniupnpc Memory allocation error";
  break;
 case 401:
  s = "Invalid Action";
  break;
 case 402:
  s = "Invalid Args";
  break;
 case 501:
  s = "Action Failed";
  break;
 case 606:
  s = "Action not authorized";
  break;
 case 701:
  s = "PinholeSpaceExhausted";
  break;
 case 702:
  s = "FirewallDisabled";
  break;
 case 703:
  s = "InboundPinholeNotAllowed";
  break;
 case 704:
  s = "NoSuchEntry";
  break;
 case 705:
  s = "ProtocolNotSupported";
  break;
 case 706:
  s = "InternalPortWildcardingNotAllowed";
  break;
 case 707:
  s = "ProtocolWildcardingNotAllowed";
  break;
 case 708:
  s = "WildcardNotPermittedInSrcIP";
  break;
 case 709:
  s = "NoPacketSent";
  break;
 case 713:
  s = "SpecifiedArrayIndexInvalid";
  break;
 case 714:
  s = "NoSuchEntryInArray";
  break;
 case 715:
  s = "WildCardNotPermittedInSrcIP";
  break;
 case 716:
  s = "WildCardNotPermittedInExtPort";
  break;
 case 718:
  s = "ConflictInMappingEntry";
  break;
 case 724:
  s = "SamePortValuesRequired";
  break;
 case 725:
  s = "OnlyPermanentLeasesSupported";
  break;
 case 726:
  s = "RemoteHostOnlySupportsWildcard";
  break;
 case 727:
  s = "ExternalPortOnlySupportsWildcard";
  break;
 default:
  s = "UnknownError";
  break;
 }
 return s;
}
