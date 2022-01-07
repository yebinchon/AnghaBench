; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_testcancel.c_pthread_testcancel.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_testcancel.c_pthread_testcancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@PThreadStateCancelPending = common dso_local global i64 0, align 8
@PTHREAD_CANCEL_DISABLE = common dso_local global i64 0, align 8
@PThreadStateCanceling = common dso_local global i64 0, align 8
@PTW32_EPS_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_testcancel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = call i64 (...) @pthread_self()
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %44

12:                                               ; preds = %0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PThreadStateCancelPending, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %44

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i32 @ptw32_mcs_lock_acquire(i32* %21, i32* %1)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ResetEvent(i32 %31)
  %33 = load i64, i64* @PThreadStateCanceling, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = call i32 @ptw32_mcs_lock_release(i32* %1)
  %40 = load i32, i32* @PTW32_EPS_CANCEL, align 4
  %41 = call i32 @ptw32_throw(i32 %40)
  br label %42

42:                                               ; preds = %28, %19
  %43 = call i32 @ptw32_mcs_lock_release(i32* %1)
  br label %44

44:                                               ; preds = %42, %18, %11
  ret void
}

declare dso_local i64 @pthread_self(...) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ResetEvent(i32) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @ptw32_throw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
