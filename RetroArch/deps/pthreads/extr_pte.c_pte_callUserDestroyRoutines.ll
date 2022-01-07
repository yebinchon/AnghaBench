; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_callUserDestroyRoutines.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_callUserDestroyRoutines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { void (i8*)*, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }

@EBUSY = common dso_local global i64 0, align 8
@PTHREAD_DESTRUCTOR_ITERATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pte_callUserDestroyRoutines(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca void (i8*)*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %108

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %105, %15
  store i32 0, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  br label %30

30:                                               ; preds = %103, %51, %16
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_lock(i32* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %5, align 8
  %38 = icmp eq %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @pthread_mutex_unlock(i32* %41)
  br label %104

43:                                               ; preds = %30
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i64 @pthread_mutex_trylock(i32* %47)
  %49 = load i64, i64* @EBUSY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  %55 = call i32 @pte_osThreadSleep(i32 1)
  br label %30

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %8, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load void (i8*)*, void (i8*)** %67, align 8
  store void (i8*)* %68, void (i8*)** %9, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @pte_osTlsGetValue(i32 %71)
  store i8* %72, i8** %7, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pte_osTlsSetValue(i32 %75, i32* null)
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %57
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @PTHREAD_DESTRUCTOR_ITERATIONS, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @pthread_mutex_unlock(i32* %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = call i32 @pthread_mutex_unlock(i32* %88)
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  %92 = load void (i8*)*, void (i8*)** %9, align 8
  %93 = load i8*, i8** %7, align 8
  call void %92(i8* %93)
  br label %103

94:                                               ; preds = %79, %57
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = call i32 @pte_tkAssocDestroy(%struct.TYPE_7__* %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @pthread_mutex_unlock(i32* %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = call i32 @pthread_mutex_unlock(i32* %101)
  br label %103

103:                                              ; preds = %94, %83
  br label %30

104:                                              ; preds = %39
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %16, label %108

108:                                              ; preds = %14, %105
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @pthread_mutex_trylock(i32*) #1

declare dso_local i32 @pte_osThreadSleep(i32) #1

declare dso_local i8* @pte_osTlsGetValue(i32) #1

declare dso_local i32 @pte_osTlsSetValue(i32, i32*) #1

declare dso_local i32 @pte_tkAssocDestroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
