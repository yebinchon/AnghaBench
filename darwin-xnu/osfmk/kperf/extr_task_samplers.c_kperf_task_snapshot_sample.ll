; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_task_samplers.c_kperf_task_snapshot_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_task_samplers.c_kperf_task_snapshot_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.kperf_task_snapshot = type { i32, i32, i32, i32, i32 }

@PERF_TK_SNAP_SAMPLE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@KPERF_TASK_FLAG_DARWIN_BG = common dso_local global i32 0, align 4
@TASK_FOREGROUND_APPLICATION = common dso_local global i64 0, align 8
@KPERF_TASK_FLAG_FOREGROUND = common dso_local global i32 0, align 4
@KPERF_TASK_FLAG_BOOSTED = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@KPERF_TASK_ALLOW_IDLE_EXIT = common dso_local global i32 0, align 4
@KPERF_TASK_FLAG_DIRTY = common dso_local global i32 0, align 4
@KPERF_TASK_FLAG_DIRTY_TRACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_task_snapshot_sample(%struct.TYPE_7__* %0, %struct.kperf_task_snapshot* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.kperf_task_snapshot*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.kperf_task_snapshot* %1, %struct.kperf_task_snapshot** %4, align 8
  %5 = load i32, i32* @PERF_TK_SNAP_SAMPLE, align 4
  %6 = load i32, i32* @DBG_FUNC_START, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @BUF_INFO(i32 %7)
  %9 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %10 = icmp ne %struct.kperf_task_snapshot* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %14 = getelementptr inbounds %struct.kperf_task_snapshot, %struct.kperf_task_snapshot* %13, i32 0, i32 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @KPERF_TASK_FLAG_DARWIN_BG, align 4
  %22 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %23 = getelementptr inbounds %struct.kperf_task_snapshot, %struct.kperf_task_snapshot* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TASK_FOREGROUND_APPLICATION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @KPERF_TASK_FLAG_FOREGROUND, align 4
  %35 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %36 = getelementptr inbounds %struct.kperf_task_snapshot, %struct.kperf_task_snapshot* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @KPERF_TASK_FLAG_BOOSTED, align 4
  %47 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %48 = getelementptr inbounds %struct.kperf_task_snapshot, %struct.kperf_task_snapshot* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %56 = getelementptr inbounds %struct.kperf_task_snapshot, %struct.kperf_task_snapshot* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %61 = getelementptr inbounds %struct.kperf_task_snapshot, %struct.kperf_task_snapshot* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %66 = getelementptr inbounds %struct.kperf_task_snapshot, %struct.kperf_task_snapshot* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.kperf_task_snapshot*, %struct.kperf_task_snapshot** %4, align 8
  %71 = getelementptr inbounds %struct.kperf_task_snapshot, %struct.kperf_task_snapshot* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @PERF_TK_SNAP_SAMPLE, align 4
  %73 = load i32, i32* @DBG_FUNC_END, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @BUF_INFO(i32 %74)
  ret void
}

declare dso_local i32 @BUF_INFO(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
