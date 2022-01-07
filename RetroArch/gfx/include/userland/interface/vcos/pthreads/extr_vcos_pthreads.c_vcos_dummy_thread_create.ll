; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/pthreads/extr_vcos_pthreads.c_vcos_dummy_thread_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/pthreads/extr_vcos_pthreads.c_vcos_dummy_thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@VCOS_SUCCESS = common dso_local global i64 0, align 8
@current_thread_key_once = common dso_local global i32 0, align 4
@current_thread_key_init = common dso_local global i32 0, align 4
@_vcos_thread_current_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @vcos_dummy_thread_create() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  %5 = call i64 @vcos_malloc(i32 12, i32* null)
  %6 = inttoptr i64 %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @vcos_assert(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 12)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = call i32 (...) @pthread_self()
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call i64 @vcos_semaphore_create(i32* %19, i32* null, i32 0)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @VCOS_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = call i32 @vcos_free(%struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %1, align 8
  br label %36

28:                                               ; preds = %0
  %29 = load i32, i32* @current_thread_key_init, align 4
  %30 = call i32 @vcos_once(i32* @current_thread_key_once, i32 %29)
  %31 = load i32, i32* @_vcos_thread_current_key, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = call i32 @pthread_setspecific(i32 %31, %struct.TYPE_6__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %1, align 8
  br label %36

36:                                               ; preds = %28, %24
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %37
}

declare dso_local i64 @vcos_malloc(i32, i32*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i32*, i32) #1

declare dso_local i32 @vcos_free(%struct.TYPE_6__*) #1

declare dso_local i32 @vcos_once(i32*, i32) #1

declare dso_local i32 @pthread_setspecific(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
