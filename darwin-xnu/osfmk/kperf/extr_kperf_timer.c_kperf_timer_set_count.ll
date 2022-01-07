; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_set_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_set_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_timer = type { i32 }

@min_period_abstime = common dso_local global i64 0, align 8
@KP_MIN_PERIOD_NS = common dso_local global i32 0, align 4
@KP_MIN_PERIOD_BG_NS = common dso_local global i32 0, align 4
@min_period_bg_abstime = common dso_local global i64 0, align 8
@KP_MIN_PERIOD_PET_NS = common dso_local global i32 0, align 4
@min_period_pet_abstime = common dso_local global i64 0, align 8
@KP_MIN_PERIOD_PET_BG_NS = common dso_local global i32 0, align 4
@min_period_pet_bg_abstime = common dso_local global i64 0, align 8
@kperf_timerc = common dso_local global i32 0, align 4
@TIMER_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_DIAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kperf_timerv = common dso_local global %struct.kperf_timer* null, align 8
@kperf_timer_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kperf_timer_set_count(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.kperf_timer*, align 8
  %5 = alloca %struct.kperf_timer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.kperf_timer* null, %struct.kperf_timer** %4, align 8
  store %struct.kperf_timer* null, %struct.kperf_timer** %5, align 8
  %9 = load i64, i64* @min_period_abstime, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @KP_MIN_PERIOD_NS, align 4
  %13 = call i32 @nanoseconds_to_absolutetime(i32 %12, i64* @min_period_abstime)
  %14 = load i32, i32* @KP_MIN_PERIOD_BG_NS, align 4
  %15 = call i32 @nanoseconds_to_absolutetime(i32 %14, i64* @min_period_bg_abstime)
  %16 = load i32, i32* @KP_MIN_PERIOD_PET_NS, align 4
  %17 = call i32 @nanoseconds_to_absolutetime(i32 %16, i64* @min_period_pet_abstime)
  %18 = load i32, i32* @KP_MIN_PERIOD_PET_BG_NS, align 4
  %19 = call i32 @nanoseconds_to_absolutetime(i32 %18, i64* @min_period_pet_bg_abstime)
  %20 = load i64, i64* @min_period_abstime, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %24

24:                                               ; preds = %11, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @kperf_timerc, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %119

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @TIMER_MAX, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %119

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @kperf_timerc, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %2, align 4
  br label %119

41:                                               ; preds = %35
  %42 = load i32, i32* @kperf_timerc, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = call i32 (...) @kperf_init()
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %119

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %41
  %51 = call i32 (...) @kperf_timer_stop()
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @VM_KERN_MEMORY_DIAG, align 4
  %57 = call %struct.kperf_timer* @kalloc_tag(i32 %55, i32 %56)
  store %struct.kperf_timer* %57, %struct.kperf_timer** %4, align 8
  %58 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %59 = icmp eq %struct.kperf_timer* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %2, align 4
  br label %119

62:                                               ; preds = %50
  %63 = load %struct.kperf_timer*, %struct.kperf_timer** @kperf_timerv, align 8
  store %struct.kperf_timer* %63, %struct.kperf_timer** %5, align 8
  %64 = load i32, i32* @kperf_timerc, align 4
  store i32 %64, i32* %6, align 4
  %65 = load %struct.kperf_timer*, %struct.kperf_timer** %5, align 8
  %66 = icmp ne %struct.kperf_timer* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.kperf_timer*, %struct.kperf_timer** @kperf_timerv, align 8
  %69 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %70 = load i32, i32* @kperf_timerc, align 4
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32 @bcopy(%struct.kperf_timer* %68, %struct.kperf_timer* %69, i32 %73)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %77 = load i32, i32* @kperf_timerc, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %76, i64 %78
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub i32 %80, %81
  %83 = zext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @bzero(%struct.kperf_timer* %79, i32 %85)
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %103, %75
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %92, i64 %94
  %96 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %95, i32 0, i32 0
  %97 = load i32, i32* @kperf_timer_handler, align 4
  %98 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %98, i64 %100
  %102 = call i32 @timer_call_setup(i32* %96, i32 %97, %struct.kperf_timer* %101)
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %87

106:                                              ; preds = %87
  %107 = load %struct.kperf_timer*, %struct.kperf_timer** %4, align 8
  store %struct.kperf_timer* %107, %struct.kperf_timer** @kperf_timerv, align 8
  %108 = load i32, i32* %3, align 4
  store i32 %108, i32* @kperf_timerc, align 4
  %109 = load %struct.kperf_timer*, %struct.kperf_timer** %5, align 8
  %110 = icmp ne %struct.kperf_timer* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.kperf_timer*, %struct.kperf_timer** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = zext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = call i32 @kfree(%struct.kperf_timer* %112, i32 %116)
  br label %118

118:                                              ; preds = %111, %106
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %60, %47, %39, %33, %28
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kperf_init(...) #1

declare dso_local i32 @kperf_timer_stop(...) #1

declare dso_local %struct.kperf_timer* @kalloc_tag(i32, i32) #1

declare dso_local i32 @bcopy(%struct.kperf_timer*, %struct.kperf_timer*, i32) #1

declare dso_local i32 @bzero(%struct.kperf_timer*, i32) #1

declare dso_local i32 @timer_call_setup(i32*, i32, %struct.kperf_timer*) #1

declare dso_local i32 @kfree(%struct.kperf_timer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
