
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;





 int OS_LOG_TYPE_DEBUG ;
 int OS_LOG_TYPE_DEFAULT ;
 int OS_LOG_TYPE_ERROR ;
 int OS_LOG_TYPE_INFO ;

__attribute__((used)) static inline uint8_t
flow_divert_syslog_type_to_oslog_type(int syslog_type)
{
 switch (syslog_type) {
  case 129: return OS_LOG_TYPE_ERROR;
  case 128: return OS_LOG_TYPE_INFO;
  case 130: return OS_LOG_TYPE_DEBUG;
  default: return OS_LOG_TYPE_DEFAULT;
 }
}
