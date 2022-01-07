; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_thread_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_perf_index.c_thread_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, i64, i32, i32)* }

@args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ready_thread_count_lock = common dso_local global i32 0, align 4
@ready_thread_count = common dso_local global i32 0, align 4
@threads_ready_cvar = common dso_local global i32 0, align 4
@start_cvar = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 1), align 8
  %10 = sdiv i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 1), align 8
  %13 = srem i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = call i32 @pthread_mutex_lock(i32* @ready_thread_count_lock)
  %23 = load i32, i32* @ready_thread_count, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @ready_thread_count, align 4
  %25 = load i32, i32* @ready_thread_count, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 1), align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @pthread_cond_signal(i32* @threads_ready_cvar)
  br label %31

31:                                               ; preds = %29, %21
  %32 = call i32 @pthread_cond_wait(i32* @start_cvar, i32* @ready_thread_count_lock)
  %33 = call i32 @pthread_mutex_unlock(i32* @ready_thread_count_lock)
  %34 = load i32 (i32, i32, i64, i32, i32)*, i32 (i32, i32, i64, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @test, i32 0, i32 0), align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 1), align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 3), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 2), align 8
  %41 = call i32 %34(i32 %35, i32 %37, i64 %38, i32 %39, i32 %40)
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
