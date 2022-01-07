; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_mutex.c_pthread_mutex_lock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_mutex.c_pthread_mutex_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i8*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_ERRORCHECK_MUTEX_INITIALIZER = common dso_local global %struct.TYPE_5__* null, align 8
@PTHREAD_MUTEX_NORMAL = common dso_local global i64 0, align 8
@PTE_OS_OK = common dso_local global i64 0, align 8
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_lock(%struct.TYPE_5__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %2, align 4
  br label %118

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PTHREAD_ERRORCHECK_MUTEX_INITIALIZER, align 8
  %16 = icmp uge %struct.TYPE_5__* %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %19 = call i32 @pte_mutex_check_need_init(%struct.TYPE_5__** %18)
  store i32 %19, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %118

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PTHREAD_MUTEX_NORMAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = call i64 @PTE_ATOMIC_EXCHANGE(i32* %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %52, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = call i64 @PTE_ATOMIC_EXCHANGE(i32* %40, i32 -1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @pte_osSemaphorePend(i32 %46, i32* null)
  %48 = load i64, i64* @PTE_OS_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %43
  br label %38

53:                                               ; preds = %50, %38
  br label %54

54:                                               ; preds = %53, %32
  br label %116

55:                                               ; preds = %24
  %56 = call i8* (...) @pthread_self()
  store i8* %56, i8** %6, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = call i64 @PTE_ATOMIC_COMPARE_EXCHANGE(i32* %58, i32 1, i32 0)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %115

67:                                               ; preds = %55
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @pthread_equal(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PTHREAD_MUTEX_RECURSIVE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %87

85:                                               ; preds = %74
  %86 = load i32, i32* @EDEADLK, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %80
  br label %114

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %103, %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = call i64 @PTE_ATOMIC_EXCHANGE(i32* %91, i32 -1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @pte_osSemaphorePend(i32 %97, i32* null)
  %99 = load i64, i64* @PTE_OS_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %4, align 4
  br label %104

103:                                              ; preds = %94
  br label %89

104:                                              ; preds = %101, %89
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 0, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %107, %104
  br label %114

114:                                              ; preds = %113, %87
  br label %115

115:                                              ; preds = %114, %61
  br label %116

116:                                              ; preds = %115, %54
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %21, %10
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @pte_mutex_check_need_init(%struct.TYPE_5__**) #1

declare dso_local i64 @PTE_ATOMIC_EXCHANGE(i32*, i32) #1

declare dso_local i64 @pte_osSemaphorePend(i32, i32*) #1

declare dso_local i8* @pthread_self(...) #1

declare dso_local i64 @PTE_ATOMIC_COMPARE_EXCHANGE(i32*, i32, i32) #1

declare dso_local i64 @pthread_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
