; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_add_watcher.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_add_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i64 (%struct.radix_node_head*, i32, i32*)* }

@rnh_lock = common dso_local global i32 0, align 4
@nstat_route_watchers = common dso_local global i32 0, align 4
@AF_MAX = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@nstat_route_walktree_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @nstat_route_add_watcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nstat_route_add_watcher(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.radix_node_head*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32, i32* @rnh_lock, align 4
  %9 = call i32 @lck_mtx_lock(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @nstat_set_provider_filter(i32* %10, i32* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = call i32 @OSIncrementAtomic(i32* @nstat_route_watchers)
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %42, %15
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @AF_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %22, i64 %24
  %26 = load %struct.radix_node_head*, %struct.radix_node_head** %25, align 8
  store %struct.radix_node_head* %26, %struct.radix_node_head** %7, align 8
  %27 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %28 = icmp ne %struct.radix_node_head* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %42

30:                                               ; preds = %21
  %31 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %32 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %31, i32 0, i32 0
  %33 = load i64 (%struct.radix_node_head*, i32, i32*)*, i64 (%struct.radix_node_head*, i32, i32*)** %32, align 8
  %34 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %35 = load i32, i32* @nstat_route_walktree_add, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 %33(%struct.radix_node_head* %34, i32 %35, i32* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %17

45:                                               ; preds = %40, %17
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* @rnh_lock, align 4
  %48 = call i32 @lck_mtx_unlock(i32 %47)
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @nstat_set_provider_filter(i32*, i32*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
