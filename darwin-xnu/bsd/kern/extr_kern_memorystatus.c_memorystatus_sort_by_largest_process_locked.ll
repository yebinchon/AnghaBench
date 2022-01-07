; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_sort_by_largest_process_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_sort_by_largest_process_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MEMSTAT_BUCKET_COUNT = common dso_local global i32 0, align 4
@memstat_bucket = common dso_local global %struct.TYPE_12__* null, align 8
@p_memstat_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @memorystatus_sort_by_largest_process_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_sort_by_largest_process_locked(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @MEMSTAT_BUCKET_COUNT, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %84

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @memstat_bucket, align 8
  %17 = load i32, i32* %2, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %18
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = call %struct.TYPE_11__* @TAILQ_FIRST(i32* %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %3, align 8
  br label %23

23:                                               ; preds = %79, %15
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %84

26:                                               ; preds = %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memorystatus_get_task_page_counts(i32 %29, i64* %8, i32* null, i32* null)
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %5, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %7, align 8
  br label %34

34:                                               ; preds = %51, %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = load i32, i32* @p_memstat_list, align 4
  %37 = call %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__* %35, i32 %36)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %6, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %3, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memorystatus_get_task_page_counts(i32 %43, i64* %8, i32* null, i32* null)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %5, align 8
  br label %51

51:                                               ; preds = %48, %39
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = icmp ne %struct.TYPE_11__* %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load i32, i32* @p_memstat_list, align 4
  %61 = call i32 @TAILQ_REMOVE(i32* %58, %struct.TYPE_11__* %59, i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = icmp eq %struct.TYPE_11__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = load i32, i32* @p_memstat_list, align 4
  %69 = call i32 @TAILQ_INSERT_HEAD(i32* %66, %struct.TYPE_11__* %67, i32 %68)
  br label %77

70:                                               ; preds = %56
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = load i32, i32* @p_memstat_list, align 4
  %76 = call i32 @TAILQ_INSERT_AFTER(i32* %72, %struct.TYPE_11__* %73, %struct.TYPE_11__* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %7, align 8
  br label %79

79:                                               ; preds = %77, %52
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %4, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = load i32, i32* @p_memstat_list, align 4
  %83 = call %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__* %81, i32 %82)
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %3, align 8
  br label %23

84:                                               ; preds = %14, %23
  ret void
}

declare dso_local %struct.TYPE_11__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @memorystatus_get_task_page_counts(i32, i64*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
