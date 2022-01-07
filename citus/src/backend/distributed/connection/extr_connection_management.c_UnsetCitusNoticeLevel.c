
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CitusNoticeLogLevel ;
 int DEFAULT_CITUS_NOTICE_LEVEL ;

void
UnsetCitusNoticeLevel()
{
 CitusNoticeLogLevel = DEFAULT_CITUS_NOTICE_LEVEL;
}
