; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_setcanceltype.c_pthread_setcanceltype.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_setcanceltype.c_pthread_setcanceltype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }

@PTHREAD_CANCEL_DEFERRED = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ASYNCHRONOUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ENABLE = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@PThreadStateCanceling = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_DISABLE = common dso_local global i64 0, align 8
@PTW32_EPS_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_setcanceltype(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i64 (...) @pthread_self()
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PTHREAD_CANCEL_DEFERRED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PTHREAD_CANCEL_ASYNCHRONOUS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %75

27:                                               ; preds = %21, %17
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = call i32 @ptw32_mcs_lock_acquire(i32* %29, i32* %6)
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PTHREAD_CANCEL_ENABLE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @PTHREAD_CANCEL_ASYNCHRONOUS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @WaitForSingleObject(i32 %54, i32 0)
  %56 = load i64, i64* @WAIT_OBJECT_0, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load i32, i32* @PThreadStateCanceling, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ResetEvent(i32 %67)
  %69 = call i32 @ptw32_mcs_lock_release(i32* %6)
  %70 = load i32, i32* @PTW32_EPS_CANCEL, align 4
  %71 = call i32 @ptw32_throw(i32 %70)
  br label %72

72:                                               ; preds = %58, %51, %47, %38
  %73 = call i32 @ptw32_mcs_lock_release(i32* %6)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @pthread_self(...) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @ResetEvent(i32) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @ptw32_throw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
