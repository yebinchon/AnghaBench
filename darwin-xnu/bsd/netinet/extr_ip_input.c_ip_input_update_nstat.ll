; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_update_nstat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_update_nstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in_addr = type { i32 }
%struct.rtentry = type { i32 }

@nstat_collect = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32, i32, i32)* @ip_input_update_nstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_input_update_nstat(%struct.ifnet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtentry*, align 8
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @nstat_collect, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.rtentry* @ifnet_cached_rtlookup_inet(%struct.ifnet* %14, i32 %16)
  store %struct.rtentry* %17, %struct.rtentry** %9, align 8
  %18 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %19 = icmp ne %struct.rtentry* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @nstat_route_rx(%struct.rtentry* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %26 = call i32 @rtfree(%struct.rtentry* %25)
  br label %27

27:                                               ; preds = %20, %13
  br label %28

28:                                               ; preds = %27, %4
  ret void
}

declare dso_local %struct.rtentry* @ifnet_cached_rtlookup_inet(%struct.ifnet*, i32) #1

declare dso_local i32 @nstat_route_rx(%struct.rtentry*, i32, i32, i32) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
