; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_mutex.c_pthread_mutex_unlock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_mutex.c_pthread_mutex_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32* }

@PTHREAD_ERRORCHECK_MUTEX_INITIALIZER = common dso_local global %struct.TYPE_4__* null, align 8
@PTHREAD_MUTEX_NORMAL = common dso_local global i64 0, align 8
@PTE_OS_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_unlock(%struct.TYPE_4__** %0) #0 {
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PTHREAD_ERRORCHECK_MUTEX_INITIALIZER, align 8
  %10 = icmp ult %struct.TYPE_4__* %8, %9
  br i1 %10, label %11, label %82

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PTHREAD_MUTEX_NORMAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = call i32 @PTE_ATOMIC_EXCHANGE(i32* %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @pte_osSemaphorePost(i32 %29, i32 1)
  %31 = load i64, i64* @PTE_OS_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %26
  br label %36

36:                                               ; preds = %35, %23
  br label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @EPERM, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %36
  br label %81

40:                                               ; preds = %11
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 (...) @pthread_self()
  %45 = call i64 @pthread_equal(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %40
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PTHREAD_MUTEX_RECURSIVE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %53, %47
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = call i32 @PTE_ATOMIC_EXCHANGE(i32* %63, i32 0)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @pte_osSemaphorePost(i32 %69, i32 1)
  %71 = load i64, i64* @PTE_OS_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %66
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %53
  br label %80

78:                                               ; preds = %40
  %79 = load i32, i32* @EPERM, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %77
  br label %81

81:                                               ; preds = %80, %39
  br label %84

82:                                               ; preds = %1
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %81
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @PTE_ATOMIC_EXCHANGE(i32*, i32) #1

declare dso_local i64 @pte_osSemaphorePost(i32, i32) #1

declare dso_local i64 @pthread_equal(i32*, i32) #1

declare dso_local i32 @pthread_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
