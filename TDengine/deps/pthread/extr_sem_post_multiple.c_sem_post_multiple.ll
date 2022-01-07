; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_sem_post_multiple.c_sem_post_multiple.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_sem_post_multiple.c_sem_post_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SEM_VALUE_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sem_post_multiple(%struct.TYPE_3__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %6, align 4
  br label %87

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = call i32 @pthread_mutex_unlock(i32* %29)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %6, align 4
  store i32 -1, i32* %3, align 4
  br label %93

32:                                               ; preds = %23
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SEM_VALUE_MAX, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 0, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i64, i64* %7, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp sle i64 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64, i64* %7, align 8
  br label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i64 [ %62, %61 ], [ %65, %63 ]
  %68 = call i64 @ReleaseSemaphore(i32 %56, i64 %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %71, %70
  br label %79

79:                                               ; preds = %78, %40
  br label %82

80:                                               ; preds = %32
  %81 = load i32, i32* @ERANGE, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = call i32 @pthread_mutex_unlock(i32* %84)
  br label %86

86:                                               ; preds = %82, %18
  br label %87

87:                                               ; preds = %86, %16
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %93

92:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %90, %27
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @ReleaseSemaphore(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
