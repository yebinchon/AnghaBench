; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_handle_deferred_upcalls.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_handle_deferred_upcalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mppcb = type { i32, i32, i32 }

@MPP_SHOULD_WORKLOOP = common dso_local global i32 0, align 4
@MPP_SHOULD_RWAKEUP = common dso_local global i32 0, align 4
@MPP_SHOULD_WWAKEUP = common dso_local global i32 0, align 4
@MPP_SET_CELLICON = common dso_local global i32 0, align 4
@MPP_UNSET_CELLICON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcp_handle_deferred_upcalls(%struct.mppcb* %0, i32 %1) #0 {
  %3 = alloca %struct.mppcb*, align 8
  %4 = alloca i32, align 4
  store %struct.mppcb* %0, %struct.mppcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %6 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %14 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %18 = call i64 @mptcp_should_defer_upcall(%struct.mppcb* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %108

21:                                               ; preds = %2
  %22 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %23 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MPP_SHOULD_WORKLOOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i32, i32* @MPP_SHOULD_WORKLOOP, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %32 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %36 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mptcp_subflow_workloop(i32 %37)
  br label %39

39:                                               ; preds = %28, %21
  %40 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %41 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MPP_SHOULD_RWAKEUP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load i32, i32* @MPP_SHOULD_RWAKEUP, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %50 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %54 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sorwakeup(i32 %55)
  br label %57

57:                                               ; preds = %46, %39
  %58 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %59 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MPP_SHOULD_WWAKEUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load i32, i32* @MPP_SHOULD_WWAKEUP, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %68 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %72 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sowwakeup(i32 %73)
  br label %75

75:                                               ; preds = %64, %57
  %76 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %77 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MPP_SET_CELLICON, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load i32, i32* @MPP_SET_CELLICON, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %86 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %90 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mptcp_set_cellicon(i32 %91)
  br label %93

93:                                               ; preds = %82, %75
  %94 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %95 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MPP_UNSET_CELLICON, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load i32, i32* @MPP_UNSET_CELLICON, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.mppcb*, %struct.mppcb** %3, align 8
  %104 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = call i32 (...) @mptcp_unset_cellicon()
  br label %108

108:                                              ; preds = %20, %100, %93
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @mptcp_should_defer_upcall(%struct.mppcb*) #1

declare dso_local i32 @mptcp_subflow_workloop(i32) #1

declare dso_local i32 @sorwakeup(i32) #1

declare dso_local i32 @sowwakeup(i32) #1

declare dso_local i32 @mptcp_set_cellicon(i32) #1

declare dso_local i32 @mptcp_unset_cellicon(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
