; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_tracepoint_retire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_tracepoint_retire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@fasttrap_retired_mtx = common dso_local global i32 0, align 4
@fasttrap_retired_spec = common dso_local global %struct.TYPE_13__* null, align 8
@fasttrap_cur_retired = common dso_local global i32 0, align 4
@fasttrap_retired_size = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@FASTTRAP_CLEANUP_TRACEPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fasttrap_tracepoint_retire(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %62

12:                                               ; preds = %2
  %13 = call i32 @lck_mtx_lock(i32* @fasttrap_retired_mtx)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fasttrap_retired_spec, align 8
  %15 = load i32, i32* @fasttrap_cur_retired, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @fasttrap_cur_retired, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i64 %17
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @fasttrap_cur_retired, align 4
  %30 = load i32, i32* @fasttrap_retired_size, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %12
  %33 = load i32, i32* @fasttrap_retired_size, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @KM_SLEEP, align 4
  %39 = call %struct.TYPE_13__* @kmem_zalloc(i32 %37, i32 %38)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %6, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fasttrap_retired_spec, align 8
  %42 = load i32, i32* @fasttrap_retired_size, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(%struct.TYPE_13__* %40, %struct.TYPE_13__* %41, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fasttrap_retired_spec, align 8
  %48 = load i32, i32* @fasttrap_retired_size, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @kmem_free(%struct.TYPE_13__* %47, i32 %51)
  %53 = load i32, i32* @fasttrap_retired_size, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* @fasttrap_retired_size, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** @fasttrap_retired_spec, align 8
  br label %56

56:                                               ; preds = %32, %12
  %57 = call i32 @lck_mtx_unlock(i32* @fasttrap_retired_mtx)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @FASTTRAP_CLEANUP_TRACEPOINT, align 4
  %61 = call i32 @fasttrap_pid_cleanup(i32 %60)
  br label %62

62:                                               ; preds = %56, %11
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local %struct.TYPE_13__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @fasttrap_pid_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
