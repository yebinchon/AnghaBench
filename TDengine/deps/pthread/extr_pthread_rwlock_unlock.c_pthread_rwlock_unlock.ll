; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_rwlock_unlock.c_pthread_rwlock_unlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_rwlock_unlock.c_pthread_rwlock_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_RWLOCK_INITIALIZER = common dso_local global %struct.TYPE_4__* null, align 8
@PTW32_RWLOCK_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_rwlock_unlock(%struct.TYPE_4__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %8 = icmp eq %struct.TYPE_4__** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %77

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PTHREAD_RWLOCK_INITIALIZER, align 8
  %19 = icmp eq %struct.TYPE_4__* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %77

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %6, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PTW32_RWLOCK_MAGIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = call i32 @pthread_mutex_lock(i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %77

43:                                               ; preds = %36
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  %52 = call i32 @pthread_cond_signal(i32* %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = call i32 @pthread_mutex_unlock(i32* %55)
  store i32 %56, i32* %5, align 4
  br label %68

57:                                               ; preds = %31
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = call i32 @pthread_mutex_unlock(i32* %63)
  store i32 %64, i32* %4, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = call i32 @pthread_mutex_unlock(i32* %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %57, %53
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %41, %29, %20, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
