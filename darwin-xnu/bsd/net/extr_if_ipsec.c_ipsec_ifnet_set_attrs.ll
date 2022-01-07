; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_ifnet_set_attrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ipsec.c_ipsec_ifnet_set_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_stats_param = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFEF_NOAUTOIPV6LL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipsec_ifnet_set_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_ifnet_set_attrs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet_stats_param, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @ifnet_set_mtu(i32 %4, i32 1500)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @IFF_UP, align 4
  %8 = load i32, i32* @IFF_MULTICAST, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IFF_POINTOPOINT, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @ifnet_set_flags(i32 %6, i32 %11, i32 65535)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @IFEF_NOAUTOIPV6LL, align 4
  %15 = load i32, i32* @IFEF_NOAUTOIPV6LL, align 4
  %16 = call i32 @ifnet_set_eflags(i32 %13, i32 %14, i32 %15)
  %17 = call i32 @bzero(%struct.ifnet_stats_param* %3, i32 4)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @ifnet_set_stat(i32 %18, %struct.ifnet_stats_param* %3)
  ret i32 0
}

declare dso_local i32 @ifnet_set_mtu(i32, i32) #1

declare dso_local i32 @ifnet_set_flags(i32, i32, i32) #1

declare dso_local i32 @ifnet_set_eflags(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.ifnet_stats_param*, i32) #1

declare dso_local i32 @ifnet_set_stat(i32, %struct.ifnet_stats_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
