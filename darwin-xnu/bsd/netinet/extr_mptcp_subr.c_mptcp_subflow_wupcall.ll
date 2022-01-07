; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_wupcall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_wupcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mptsub = type { %struct.mptses* }
%struct.mptses = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPP_WUPCALL = common dso_local global i32 0, align 4
@MPP_SHOULD_WWAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, i8*, i32)* @mptcp_subflow_wupcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_subflow_wupcall(%struct.socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mptsub*, align 8
  %8 = alloca %struct.mptses*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mptsub*
  store %struct.mptsub* %10, %struct.mptsub** %7, align 8
  %11 = load %struct.mptsub*, %struct.mptsub** %7, align 8
  %12 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %11, i32 0, i32 0
  %13 = load %struct.mptses*, %struct.mptses** %12, align 8
  store %struct.mptses* %13, %struct.mptses** %8, align 8
  %14 = load %struct.mptses*, %struct.mptses** %8, align 8
  %15 = icmp ne %struct.mptses* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.mptses*, %struct.mptses** %8, align 8
  %19 = getelementptr inbounds %struct.mptses, %struct.mptses* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i64 @mptcp_should_defer_upcall(%struct.TYPE_2__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load %struct.mptses*, %struct.mptses** %8, align 8
  %25 = getelementptr inbounds %struct.mptses, %struct.mptses* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MPP_WUPCALL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @MPP_SHOULD_WWAKEUP, align 4
  %34 = load %struct.mptses*, %struct.mptses** %8, align 8
  %35 = getelementptr inbounds %struct.mptses, %struct.mptses* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %32, %23
  br label %44

41:                                               ; preds = %3
  %42 = load %struct.mptses*, %struct.mptses** %8, align 8
  %43 = call i32 @mptcp_output(%struct.mptses* %42)
  br label %44

44:                                               ; preds = %41, %40
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @mptcp_should_defer_upcall(%struct.TYPE_2__*) #1

declare dso_local i32 @mptcp_output(%struct.mptses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
