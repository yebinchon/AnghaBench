; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_cond.c___lwp_cond_waitsupp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_cond.c___lwp_cond_waitsupp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32* }
%struct.TYPE_6__ = type { i64, i32 }

@LWP_MUTEX_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@_thr_executing = common dso_local global %struct.TYPE_7__* null, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32)* @__lwp_cond_waitsupp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lwp_cond_waitsupp(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_6__* @__lwp_cond_open(i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %94

19:                                               ; preds = %4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LWP_MUTEX_NULL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = call i32 (...) @__lwp_thread_dispatchenable()
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %94

34:                                               ; preds = %25, %19
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @LWP_MutexUnlock(i64 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @_CPU_ISR_Disable(i64 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i32 @__lwp_threadqueue_csenter(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_thr_executing, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_thr_executing, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32* %52, i32** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_thr_executing, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @_CPU_ISR_Restore(i64 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @__lwp_threadqueue_enqueue(i32* %63, i32 %64)
  %66 = call i32 (...) @__lwp_thread_dispatchenable()
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_thr_executing, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %39
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @ETIMEDOUT, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i64, i64* %10, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %94

80:                                               ; preds = %73, %39
  br label %84

81:                                               ; preds = %34
  %82 = call i32 (...) @__lwp_thread_dispatchenable()
  %83 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %81, %80
  %85 = load i64, i64* %7, align 8
  %86 = call i64 @LWP_MutexLock(i64 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %5, align 4
  br label %94

91:                                               ; preds = %84
  %92 = load i64, i64* %10, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %89, %77, %31, %18
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_6__* @__lwp_cond_open(i32) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

declare dso_local i32 @LWP_MutexUnlock(i64) #1

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @__lwp_threadqueue_csenter(i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i32 @__lwp_threadqueue_enqueue(i32*, i32) #1

declare dso_local i64 @LWP_MutexLock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
