; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_ok_to_create_subflows.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_ok_to_create_subflows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcb = type { i64, i32 }

@MPTCPS_ESTABLISHED = common dso_local global i64 0, align 8
@MPTCPS_FIN_WAIT_1 = common dso_local global i64 0, align 8
@MPTCPF_FALLBACK_TO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mptcb*)* @mptcp_ok_to_create_subflows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_ok_to_create_subflows(%struct.mptcb* %0) #0 {
  %2 = alloca %struct.mptcb*, align 8
  store %struct.mptcb* %0, %struct.mptcb** %2, align 8
  %3 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %4 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MPTCPS_ESTABLISHED, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %10 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MPTCPS_FIN_WAIT_1, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %16 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MPTCPF_FALLBACK_TO_TCP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %14, %8, %1
  %23 = phi i1 [ false, %8 ], [ false, %1 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
