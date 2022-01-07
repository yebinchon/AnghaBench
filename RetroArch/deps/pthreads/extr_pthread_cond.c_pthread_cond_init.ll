; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_cond.c_pthread_cond_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_cond.c_pthread_cond_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_SHARED = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@pte_cond_list_lock = common dso_local global i32 0, align 4
@pte_cond_list_tail = common dso_local global %struct.TYPE_9__* null, align 8
@pte_cond_list_head = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_cond_init(%struct.TYPE_9__** %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %9 = icmp eq %struct.TYPE_9__** %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %103

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %14 = icmp ne %struct.TYPE_8__** %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PTHREAD_PROCESS_SHARED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOSYS, align 4
  store i32 %27, i32* %6, align 4
  br label %73

28:                                               ; preds = %19, %15, %12
  %29 = call i64 @calloc(i32 1, i32 56)
  %30 = inttoptr i64 %29 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = icmp eq %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %6, align 4
  br label %73

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = call i64 @sem_init(i32* %43, i32 0, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @errno, align 4
  store i32 %47, i32* %6, align 4
  br label %70

48:                                               ; preds = %35
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = call i64 @sem_init(i32* %50, i32 0, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %6, align 4
  br label %66

55:                                               ; preds = %48
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = call i32 @pthread_mutex_init(i32* %57, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %62

61:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %73

62:                                               ; preds = %60
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = call i32 @sem_destroy(i32* %64)
  br label %66

66:                                               ; preds = %62, %53
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = call i32 @sem_destroy(i32* %68)
  br label %70

70:                                               ; preds = %66, %46
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = call i32 @free(%struct.TYPE_9__* %71)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %73

73:                                               ; preds = %70, %61, %33, %26
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 0, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load i32, i32* @pte_cond_list_lock, align 4
  %78 = call i32 @pte_osMutexLock(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pte_cond_list_tail, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pte_cond_list_tail, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pte_cond_list_tail, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %89, align 8
  br label %90

90:                                               ; preds = %86, %76
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** @pte_cond_list_tail, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pte_cond_list_head, align 8
  %93 = icmp eq %struct.TYPE_9__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** @pte_cond_list_head, align 8
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i32, i32* @pte_cond_list_lock, align 4
  %98 = call i32 @pte_osMutexUnlock(i32 %97)
  br label %99

99:                                               ; preds = %96, %73
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %101, align 8
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %10
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32) #1

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
