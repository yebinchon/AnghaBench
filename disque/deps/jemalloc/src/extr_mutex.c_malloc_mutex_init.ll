; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_mutex.c_malloc_mutex_init.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_mutex.c_malloc_mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@MALLOC_MUTEX_TYPE = common dso_local global i32 0, align 4
@_CRT_SPINCOUNT = common dso_local global i32 0, align 4
@bootstrap_calloc = common dso_local global i32 0, align 4
@postpone_init = common dso_local global i64 0, align 8
@postponed_mutexes = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malloc_mutex_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = call i64 @pthread_mutexattr_init(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

8:                                                ; preds = %1
  %9 = load i32, i32* @MALLOC_MUTEX_TYPE, align 4
  %10 = call i32 @pthread_mutexattr_settype(i32* %4, i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i64 @pthread_mutex_init(i64* %12, i32* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 @pthread_mutexattr_destroy(i32* %4)
  store i32 1, i32* %2, align 4
  br label %19

17:                                               ; preds = %8
  %18 = call i32 @pthread_mutexattr_destroy(i32* %4)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %15, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i32 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i64*, i32*) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
