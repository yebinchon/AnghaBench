; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_net_qos_map_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_net_qos_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@_NET_SERVICE_TYPE_COUNT = common dso_local global i32 0, align 4
@fastlane_netsvctype_dscp_map = common dso_local global i32 0, align 4
@_DSCP_DF = common dso_local global i32 0, align 4
@default_net_qos_dscp_map = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SOTCIX_CTL = common dso_local global i64 0, align 8
@default_dscp_to_wifi_ac_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_qos_map_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @_NET_SERVICE_TYPE_COUNT, align 4
  %3 = load i32, i32* @fastlane_netsvctype_dscp_map, align 4
  %4 = call i64 @set_netsvctype_dscp_map(i32 %2, i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i32, i32* @_DSCP_DF, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_net_qos_dscp_map, i32 0, i32 0), align 8
  %11 = load i64, i64* @SOTCIX_CTL, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @default_dscp_to_wifi_ac_map, align 4
  %14 = call i32 @set_dscp_to_wifi_ac_map(i32 %13, i32 1)
  ret void
}

declare dso_local i64 @set_netsvctype_dscp_map(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @set_dscp_to_wifi_ac_map(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
