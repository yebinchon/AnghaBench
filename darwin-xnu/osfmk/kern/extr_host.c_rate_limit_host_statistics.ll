; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_rate_limit_host_statistics.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_rate_limit_host_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@kernel_task = common dso_local global %struct.TYPE_5__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@TF_PLATFORM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@host_statistics_lck = common dso_local global i32 0, align 4
@g_host_stats_cache = common dso_local global %struct.TYPE_6__* null, align 8
@host_statistics_time_window = common dso_local global i64 0, align 8
@HOST_STATISTICS_MAX_REQUESTS = common dso_local global i32 0, align 4
@HOST_STATISTICS_MIN_REQUESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*, i32*)* @rate_limit_host_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_limit_host_statistics(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call %struct.TYPE_5__* (...) @current_task()
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %14, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_task, align 8
  %21 = icmp ne %struct.TYPE_5__* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @KERN_SUCCESS, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TF_PLATFORM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %7, align 4
  br label %116

34:                                               ; preds = %6
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @get_host_info_data_index(i32 %37, i32 %38, i32* %39, i32* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %114

45:                                               ; preds = %34
  %46 = load i32, i32* %17, align 4
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  %48 = call i32 @lck_mtx_lock(i32* @host_statistics_lck)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_host_stats_cache, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 (...) @mach_continuous_time()
  %56 = load i64, i64* @host_statistics_time_window, align 8
  %57 = sub nsw i64 %55, %56
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %45
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %16, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_host_stats_cache, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = sext i32 %66 to i64
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_host_stats_cache, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %68, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %59
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @get_cached_info(i32 %78, i32 %79, i32* %80)
  br label %82

82:                                               ; preds = %76, %59
  br label %83

83:                                               ; preds = %82, %45
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %83
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_host_stats_cache, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  %92 = call i32 (...) @mach_absolute_time()
  %93 = load i32, i32* @HOST_STATISTICS_MAX_REQUESTS, align 4
  %94 = load i32, i32* @HOST_STATISTICS_MIN_REQUESTS, align 4
  %95 = sub nsw i32 %93, %94
  %96 = add nsw i32 %95, 1
  %97 = srem i32 %92, %96
  %98 = load i32, i32* @HOST_STATISTICS_MIN_REQUESTS, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_host_stats_cache, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i64 %100, i64* %105, align 8
  %106 = call i64 (...) @mach_continuous_time()
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_host_stats_cache, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i64 %106, i64* %111, align 8
  br label %112

112:                                              ; preds = %86, %83
  %113 = call i32 @lck_mtx_unlock(i32* @host_statistics_lck)
  br label %114

114:                                              ; preds = %112, %44
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %114, %32
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_5__* @current_task(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_host_info_data_index(i32, i32, i32*, i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @mach_continuous_time(...) #1

declare dso_local i32 @get_cached_info(i32, i32, i32*) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
