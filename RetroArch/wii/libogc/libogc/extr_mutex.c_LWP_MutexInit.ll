; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_mutex.c_LWP_MutexInit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_mutex.c_LWP_MutexInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@LWP_MUTEX_FIFO = common dso_local global i32 0, align 4
@LWP_MUTEX_NEST_ACQUIRE = common dso_local global i32 0, align 4
@LWP_MUTEX_NEST_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LWP_MUTEX_UNLOCKED = common dso_local global i32 0, align 4
@LWP_OBJTYPE_MUTEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LWP_MutexInit(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64*, i64** %4, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = call %struct.TYPE_7__* (...) @__lwp_mutex_allocate()
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %46

16:                                               ; preds = %11
  %17 = load i32, i32* @LWP_MUTEX_FIFO, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @LWP_MUTEX_NEST_ACQUIRE, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @LWP_MUTEX_NEST_ERROR, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* @LWP_MUTEX_UNLOCKED, align 4
  %34 = call i32 @__lwp_mutex_initialize(i32* %32, %struct.TYPE_8__* %6, i32 %33)
  %35 = load i32, i32* @LWP_OBJTYPE_MUTEX, align 4
  %36 = call i32 @LWP_OBJMASKTYPE(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @LWP_OBJMASKID(i32 %40)
  %42 = or i32 %36, %41
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %4, align 8
  store i64 %43, i64* %44, align 8
  %45 = call i32 (...) @__lwp_thread_dispatchunnest()
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %25, %15, %10
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_7__* @__lwp_mutex_allocate(...) #1

declare dso_local i32 @__lwp_mutex_initialize(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @LWP_OBJMASKTYPE(i32) #1

declare dso_local i32 @LWP_OBJMASKID(i32) #1

declare dso_local i32 @__lwp_thread_dispatchunnest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
