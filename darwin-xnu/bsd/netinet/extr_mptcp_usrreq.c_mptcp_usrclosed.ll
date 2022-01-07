; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usrclosed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usrclosed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { %struct.mptcb* }
%struct.mptcb = type { i64, i64 }

@MPCE_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mptses* (%struct.mptses*)* @mptcp_usrclosed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mptses* @mptcp_usrclosed(%struct.mptses* %0) #0 {
  %2 = alloca %struct.mptses*, align 8
  %3 = alloca %struct.mptses*, align 8
  %4 = alloca %struct.mptcb*, align 8
  store %struct.mptses* %0, %struct.mptses** %3, align 8
  %5 = load %struct.mptses*, %struct.mptses** %3, align 8
  %6 = getelementptr inbounds %struct.mptses, %struct.mptses* %5, i32 0, i32 0
  %7 = load %struct.mptcb*, %struct.mptcb** %6, align 8
  store %struct.mptcb* %7, %struct.mptcb** %4, align 8
  %8 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %9 = load i32, i32* @MPCE_CLOSE, align 4
  %10 = call i32 @mptcp_close_fsm(%struct.mptcb* %8, i32 %9)
  %11 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %12 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %16 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load %struct.mptses*, %struct.mptses** %3, align 8
  store %struct.mptses* %20, %struct.mptses** %2, align 8
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.mptses*, %struct.mptses** %3, align 8
  %23 = call i32 @mptcp_finish_usrclosed(%struct.mptses* %22)
  %24 = load %struct.mptses*, %struct.mptses** %3, align 8
  store %struct.mptses* %24, %struct.mptses** %2, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = load %struct.mptses*, %struct.mptses** %2, align 8
  ret %struct.mptses* %26
}

declare dso_local i32 @mptcp_close_fsm(%struct.mptcb*, i32) #1

declare dso_local i32 @mptcp_finish_usrclosed(%struct.mptses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
