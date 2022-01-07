; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_delay_np.c_pthread_delay_np.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_delay_np.c_pthread_delay_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ENABLE = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@PThreadStateCanceling = common dso_local global i64 0, align 8
@PTHREAD_CANCEL_DISABLE = common dso_local global i64 0, align 8
@PTW32_EPS_CANCEL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_delay_np(%struct.timespec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  %13 = load %struct.timespec*, %struct.timespec** %3, align 8
  %14 = icmp eq %struct.timespec* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %110

17:                                               ; preds = %1
  %18 = load %struct.timespec*, %struct.timespec** %3, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.timespec*, %struct.timespec** %3, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 (...) @pthread_testcancel()
  %29 = call i32 @Sleep(i64 0)
  %30 = call i32 (...) @pthread_testcancel()
  store i32 0, i32* %2, align 4
  br label %110

31:                                               ; preds = %22, %17
  %32 = load %struct.timespec*, %struct.timespec** %3, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul nsw i64 %34, 1000
  store i64 %35, i64* %5, align 8
  %36 = load %struct.timespec*, %struct.timespec** %3, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 999999
  %40 = sdiv i64 %39, 1000000
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %4, align 8
  %44 = icmp sgt i64 0, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %2, align 4
  br label %110

47:                                               ; preds = %31
  %48 = call i32* (...) @pthread_self()
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32* %48, i32** %49, align 8
  %50 = bitcast %struct.TYPE_5__* %8 to i8*
  %51 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 8, i1 false)
  %52 = bitcast %struct.TYPE_5__* %10 to i8*
  %53 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* null, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %2, align 4
  br label %110

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %9, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PTHREAD_CANCEL_ENABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %59
  %69 = load i64, i64* @WAIT_OBJECT_0, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @WaitForSingleObject(i32 %72, i64 %73)
  store i64 %74, i64* %7, align 8
  %75 = icmp eq i64 %69, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %68
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = call i32 @ptw32_mcs_lock_acquire(i32* %78, i32* %12)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PThreadStateCanceling, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %76
  %86 = load i64, i64* @PThreadStateCanceling, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = call i32 @ptw32_mcs_lock_release(i32* %12)
  %93 = load i32, i32* @PTW32_EPS_CANCEL, align 4
  %94 = call i32 @ptw32_throw(i32 %93)
  br label %95

95:                                               ; preds = %85, %76
  %96 = call i32 @ptw32_mcs_lock_release(i32* %12)
  %97 = load i32, i32* @ESRCH, align 4
  store i32 %97, i32* %2, align 4
  br label %110

98:                                               ; preds = %68
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @WAIT_TIMEOUT, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %2, align 4
  br label %110

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104
  br label %109

106:                                              ; preds = %59
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @Sleep(i64 %107)
  br label %109

109:                                              ; preds = %106, %105
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %102, %95, %57, %45, %27, %15
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @pthread_testcancel(...) #1

declare dso_local i32 @Sleep(i64) #1

declare dso_local i32* @pthread_self(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @WaitForSingleObject(i32, i64) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @ptw32_throw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
