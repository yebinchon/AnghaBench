; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_is_bad.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_is_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { i64, i64 }
%struct.mptsub = type { i32 }
%struct.tcpcb = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@mptcp_fail_thresh = common dso_local global i32 0, align 4
@MPTCP_SVCTYPE_HANDOVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptcp_subflow_is_bad(%struct.mptses* %0, %struct.mptsub* %1) #0 {
  %3 = alloca %struct.mptses*, align 8
  %4 = alloca %struct.mptsub*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i32, align 4
  store %struct.mptses* %0, %struct.mptses** %3, align 8
  store %struct.mptsub* %1, %struct.mptsub** %4, align 8
  %7 = load %struct.mptsub*, %struct.mptsub** %4, align 8
  %8 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.tcpcb* @sototcpcb(i32 %9)
  store %struct.tcpcb* %10, %struct.tcpcb** %5, align 8
  %11 = load i32, i32* @mptcp_fail_thresh, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mptses*, %struct.mptses** %3, align 8
  %13 = getelementptr inbounds %struct.mptses, %struct.mptses* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MPTCP_SVCTYPE_HANDOVER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 2
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.mptses*, %struct.mptses** %3, align 8
  %28 = call %struct.TYPE_4__* @mptetoso(%struct.mptses* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.mptses*, %struct.mptses** %3, align 8
  %35 = getelementptr inbounds %struct.mptses, %struct.mptses* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %26
  %39 = phi i1 [ true, %26 ], [ %37, %33 ]
  br label %40

40:                                               ; preds = %38, %20
  %41 = phi i1 [ false, %20 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local %struct.tcpcb* @sototcpcb(i32) #1

declare dso_local %struct.TYPE_4__* @mptetoso(%struct.mptses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
