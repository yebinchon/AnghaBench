; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_mutex_destroy.c_pthread_mutex_destroy.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_mutex_destroy.c_pthread_mutex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_7__* }

@PTHREAD_ERRORCHECK_MUTEX_INITIALIZER = common dso_local global %struct.TYPE_7__* null, align 8
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ptw32_mutex_test_init_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_destroy(%struct.TYPE_7__** %0) #0 {
  %2 = alloca %struct.TYPE_7__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_ERRORCHECK_MUTEX_INITIALIZER, align 8
  %9 = icmp ult %struct.TYPE_7__* %7, %8
  br i1 %9, label %10, label %78

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = call i32 @pthread_mutex_trylock(%struct.TYPE_7__** %4)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 0, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @ENOTRECOVERABLE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %16, %10
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PTHREAD_MUTEX_RECURSIVE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 1, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %26, %20
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @pthread_mutex_unlock(%struct.TYPE_7__** %4)
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 0, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CloseHandle(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %60, align 8
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %52
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = call i32 @free(%struct.TYPE_7__* %63)
  br label %65

65:                                               ; preds = %62, %58
  br label %69

66:                                               ; preds = %38
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %68, align 8
  br label %69

69:                                               ; preds = %66, %65
  br label %76

70:                                               ; preds = %26
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @EBUSY, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %69
  br label %77

77:                                               ; preds = %76, %16
  br label %90

78:                                               ; preds = %1
  %79 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_mutex_test_init_lock, i32* %5)
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_ERRORCHECK_MUTEX_INITIALIZER, align 8
  %83 = icmp uge %struct.TYPE_7__* %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %85, align 8
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @EBUSY, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = call i32 @ptw32_mcs_lock_release(i32* %5)
  br label %90

90:                                               ; preds = %88, %77
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @pthread_mutex_trylock(%struct.TYPE_7__**) #1

declare dso_local i32 @pthread_mutex_unlock(%struct.TYPE_7__**) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
