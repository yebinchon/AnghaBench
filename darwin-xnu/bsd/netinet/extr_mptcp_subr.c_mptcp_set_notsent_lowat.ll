; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_set_notsent_lowat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_set_notsent_lowat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { %struct.mptcb*, %struct.TYPE_2__* }
%struct.mptcb = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MPP_ATTACHED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptcp_set_notsent_lowat(%struct.mptses* %0, i32 %1) #0 {
  %3 = alloca %struct.mptses*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mptcb*, align 8
  %6 = alloca i32, align 4
  store %struct.mptses* %0, %struct.mptses** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.mptcb* null, %struct.mptcb** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mptses*, %struct.mptses** %3, align 8
  %8 = getelementptr inbounds %struct.mptses, %struct.mptses* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MPP_ATTACHED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.mptses*, %struct.mptses** %3, align 8
  %17 = getelementptr inbounds %struct.mptses, %struct.mptses* %16, i32 0, i32 0
  %18 = load %struct.mptcb*, %struct.mptcb** %17, align 8
  store %struct.mptcb* %18, %struct.mptcb** %5, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %21 = icmp ne %struct.mptcb* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.mptcb*, %struct.mptcb** %5, align 8
  %25 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
