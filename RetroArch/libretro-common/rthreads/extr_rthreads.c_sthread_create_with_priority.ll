; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/rthreads/extr_rthreads.c_sthread_create_with_priority.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/rthreads/extr_rthreads.c_sthread_create_with_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { void (i8*)*, i32, i32, i8* }

@thread_wrap = common dso_local global i32 0, align 4
@SCHED_RR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread_data* @sthread_create_with_priority(void (i8*)* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.thread_data*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread_data*, align 8
  %10 = alloca %struct.thread_data*, align 8
  store void (i8*)* %0, void (i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.thread_data* null, %struct.thread_data** %9, align 8
  %11 = call i64 @calloc(i32 1, i32 24)
  %12 = inttoptr i64 %11 to %struct.thread_data*
  store %struct.thread_data* %12, %struct.thread_data** %10, align 8
  %13 = load %struct.thread_data*, %struct.thread_data** %10, align 8
  %14 = icmp ne %struct.thread_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.thread_data* null, %struct.thread_data** %4, align 8
  br label %50

16:                                               ; preds = %3
  %17 = call i64 @calloc(i32 1, i32 24)
  %18 = inttoptr i64 %17 to %struct.thread_data*
  store %struct.thread_data* %18, %struct.thread_data** %9, align 8
  %19 = load %struct.thread_data*, %struct.thread_data** %9, align 8
  %20 = icmp ne %struct.thread_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %41

22:                                               ; preds = %16
  %23 = load void (i8*)*, void (i8*)** %5, align 8
  %24 = load %struct.thread_data*, %struct.thread_data** %9, align 8
  %25 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %24, i32 0, i32 0
  store void (i8*)* %23, void (i8*)** %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.thread_data*, %struct.thread_data** %9, align 8
  %28 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.thread_data*, %struct.thread_data** %10, align 8
  %30 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %29, i32 0, i32 1
  %31 = load i32, i32* @thread_wrap, align 4
  %32 = load %struct.thread_data*, %struct.thread_data** %9, align 8
  %33 = call i64 @pthread_create(i32* %30, i32* null, i32 %31, %struct.thread_data* %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load %struct.thread_data*, %struct.thread_data** %10, align 8
  store %struct.thread_data* %39, %struct.thread_data** %4, align 8
  br label %50

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.thread_data*, %struct.thread_data** %9, align 8
  %43 = icmp ne %struct.thread_data* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.thread_data*, %struct.thread_data** %9, align 8
  %46 = call i32 @free(%struct.thread_data* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.thread_data*, %struct.thread_data** %10, align 8
  %49 = call i32 @free(%struct.thread_data* %48)
  store %struct.thread_data* null, %struct.thread_data** %4, align 8
  br label %50

50:                                               ; preds = %47, %38, %15
  %51 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  ret %struct.thread_data* %51
}

declare dso_local i64 @calloc(i32, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.thread_data*) #1

declare dso_local i32 @free(%struct.thread_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
