; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_eupcall1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_eupcall1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mptsub = type { i32, %struct.mptses* }
%struct.mptses = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPP_SHOULD_WORKLOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, i8*, i32)* @mptcp_subflow_eupcall1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_subflow_eupcall1(%struct.socket* %0, i8* %1, i32 %2) #0 {
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
  %12 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %11, i32 0, i32 1
  %13 = load %struct.mptses*, %struct.mptses** %12, align 8
  store %struct.mptses* %13, %struct.mptses** %8, align 8
  %14 = load %struct.mptses*, %struct.mptses** %8, align 8
  %15 = icmp ne %struct.mptses* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.mptses*, %struct.mptses** %8, align 8
  %19 = call i32 @mpte_lock_assert_held(%struct.mptses* %18)
  %20 = load %struct.mptsub*, %struct.mptsub** %7, align 8
  %21 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %50

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mptsub*, %struct.mptsub** %7, align 8
  %31 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.mptses*, %struct.mptses** %8, align 8
  %35 = getelementptr inbounds %struct.mptses, %struct.mptses* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i64 @mptcp_should_defer_upcall(%struct.TYPE_2__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load i32, i32* @MPP_SHOULD_WORKLOOP, align 4
  %41 = load %struct.mptses*, %struct.mptses** %8, align 8
  %42 = getelementptr inbounds %struct.mptses, %struct.mptses* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %50

47:                                               ; preds = %28
  %48 = load %struct.mptses*, %struct.mptses** %8, align 8
  %49 = call i32 @mptcp_subflow_workloop(%struct.mptses* %48)
  br label %50

50:                                               ; preds = %47, %39, %27
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @mpte_lock_assert_held(%struct.mptses*) #1

declare dso_local i64 @mptcp_should_defer_upcall(%struct.TYPE_2__*) #1

declare dso_local i32 @mptcp_subflow_workloop(%struct.mptses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
