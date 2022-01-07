; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/deps/extr_tinycthread.c_mtx_init.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/deps/extr_tinycthread.c_mtx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@mtx_recursive = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i32 0, align 4
@thrd_error = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtx_init(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @pthread_mutexattr_init(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @mtx_recursive, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %14 = call i32 @pthread_mutexattr_settype(i32* %6, i32 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @pthread_mutex_init(%struct.TYPE_4__* %16, i32* %6)
  store i32 %17, i32* %5, align 4
  %18 = call i32 @pthread_mutexattr_destroy(i32* %6)
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @thrd_success, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @thrd_error, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  ret i32 %26
}

declare dso_local i32 @pthread_mutexattr_init(i32*) #1

declare dso_local i32 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @pthread_mutex_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
