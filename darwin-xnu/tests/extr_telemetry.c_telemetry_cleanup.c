
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELEMETRY_CMD_PMI_SETUP ;
 int TELEMETRY_PMI_NONE ;
 int T_EXPECT_POSIX_SUCCESS (int,char*) ;
 int __telemetry (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
telemetry_cleanup(void)
{
 int ret = __telemetry(TELEMETRY_CMD_PMI_SETUP, TELEMETRY_PMI_NONE, 0, 0, 0, 0);
 T_EXPECT_POSIX_SUCCESS(ret, "telemetry(... NONE ...)");
}
