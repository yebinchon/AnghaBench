; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_rtproto_del.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_rtproto_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 (%struct.radix_node_head*, i32, %struct.ifnet.0*)* }
%struct.ifnet.0 = type opaque
%struct.ifnet = type { i32 }

@AF_MAX = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@rnh_lock = common dso_local global i32 0, align 4
@if_rtdel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_rtproto_del(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radix_node_head*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AF_MAX, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %13, i64 %15
  %17 = load %struct.radix_node_head*, %struct.radix_node_head** %16, align 8
  store %struct.radix_node_head* %17, %struct.radix_node_head** %5, align 8
  %18 = icmp ne %struct.radix_node_head* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %21 = icmp ne %struct.ifnet* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* @rnh_lock, align 4
  %24 = call i32 @lck_mtx_lock(i32 %23)
  %25 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %26 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %25, i32 0, i32 0
  %27 = load i32 (%struct.radix_node_head*, i32, %struct.ifnet.0*)*, i32 (%struct.radix_node_head*, i32, %struct.ifnet.0*)** %26, align 8
  %28 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %29 = load i32, i32* @if_rtdel, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = bitcast %struct.ifnet* %30 to %struct.ifnet.0*
  %32 = call i32 %27(%struct.radix_node_head* %28, i32 %29, %struct.ifnet.0* %31)
  %33 = load i32, i32* @rnh_lock, align 4
  %34 = call i32 @lck_mtx_unlock(i32 %33)
  br label %35

35:                                               ; preds = %22, %19, %12, %9, %2
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
