; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_rtmtu_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_rtmtu_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 (%struct.radix_node_head*, i32, %struct.ifnet.0*)* }
%struct.ifnet.0 = type opaque
%struct.ifnet = type { i32 }

@AF_MAX = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@rnh_lock = common dso_local global i32 0, align 4
@if_rtmtu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @if_rtmtu_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_rtmtu_update(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.radix_node_head*, align 8
  %4 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AF_MAX, align 4
  %8 = add nsw i32 %7, 1
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %5
  %11 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %11, i64 %13
  %15 = load %struct.radix_node_head*, %struct.radix_node_head** %14, align 8
  store %struct.radix_node_head* %15, %struct.radix_node_head** %3, align 8
  %16 = icmp eq %struct.radix_node_head* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %31

18:                                               ; preds = %10
  %19 = load i32, i32* @rnh_lock, align 4
  %20 = call i32 @lck_mtx_lock(i32 %19)
  %21 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %22 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %21, i32 0, i32 0
  %23 = load i32 (%struct.radix_node_head*, i32, %struct.ifnet.0*)*, i32 (%struct.radix_node_head*, i32, %struct.ifnet.0*)** %22, align 8
  %24 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %25 = load i32, i32* @if_rtmtu, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %27 = bitcast %struct.ifnet* %26 to %struct.ifnet.0*
  %28 = call i32 %23(%struct.radix_node_head* %24, i32 %25, %struct.ifnet.0* %27)
  %29 = load i32, i32* @rnh_lock, align 4
  %30 = call i32 @lck_mtx_unlock(i32 %29)
  br label %31

31:                                               ; preds = %18, %17
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %5

34:                                               ; preds = %5
  %35 = call i32 (...) @routegenid_update()
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @routegenid_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
