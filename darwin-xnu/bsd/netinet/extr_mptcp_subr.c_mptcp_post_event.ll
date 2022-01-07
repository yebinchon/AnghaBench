; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_post_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_post_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kev_mptcp_data = type { i32 }
%struct.kev_msg = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.kev_mptcp_data* }

@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_MPTCP_SUBCLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mptcp_post_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_post_event(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kev_mptcp_data, align 4
  %6 = alloca %struct.kev_msg, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.kev_msg* %6, i32 0, i32 24)
  %8 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %9 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 4
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %11 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 3
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @KEV_MPTCP_SUBCLASS, align 4
  %13 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.kev_mptcp_data, %struct.kev_mptcp_data* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.kev_mptcp_data* %5, %struct.kev_mptcp_data** %21, align 8
  %22 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = call i32 @kev_post_msg(%struct.kev_msg* %6)
  ret i32 %26
}

declare dso_local i32 @memset(%struct.kev_msg*, i32, i32) #1

declare dso_local i32 @kev_post_msg(%struct.kev_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
