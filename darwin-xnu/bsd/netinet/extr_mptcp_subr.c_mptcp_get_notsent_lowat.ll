; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_get_notsent_lowat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_get_notsent_lowat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { %struct.mptcb*, %struct.TYPE_2__* }
%struct.mptcb = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MPP_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptcp_get_notsent_lowat(%struct.mptses* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mptses*, align 8
  %4 = alloca %struct.mptcb*, align 8
  store %struct.mptses* %0, %struct.mptses** %3, align 8
  store %struct.mptcb* null, %struct.mptcb** %4, align 8
  %5 = load %struct.mptses*, %struct.mptses** %3, align 8
  %6 = getelementptr inbounds %struct.mptses, %struct.mptses* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MPP_ATTACHED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.mptses*, %struct.mptses** %3, align 8
  %15 = getelementptr inbounds %struct.mptses, %struct.mptses* %14, i32 0, i32 0
  %16 = load %struct.mptcb*, %struct.mptcb** %15, align 8
  store %struct.mptcb* %16, %struct.mptcb** %4, align 8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %19 = icmp ne %struct.mptcb* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %22 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
