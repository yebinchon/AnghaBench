; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_ok_to_fin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_ok_to_fin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.mptcb = type { i32, i32 }

@MPTCP_DATASEQ_LOW32_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, i32, i32)* @mptcp_ok_to_fin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_ok_to_fin(%struct.tcpcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mptcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %10 = call %struct.mptcb* @tptomptp(%struct.tcpcb* %9)
  store %struct.mptcb* %10, %struct.mptcb** %8, align 8
  %11 = load %struct.mptcb*, %struct.mptcb** %8, align 8
  %12 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mpte_lock_assert_held(i32 %13)
  %15 = load %struct.mptcb*, %struct.mptcb** %8, align 8
  %16 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MPTCP_DATASEQ_LOW32_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.mptcb*, %struct.mptcb** %8, align 8
  %26 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.mptcb* @tptomptp(%struct.tcpcb*) #1

declare dso_local i32 @mpte_lock_assert_held(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
