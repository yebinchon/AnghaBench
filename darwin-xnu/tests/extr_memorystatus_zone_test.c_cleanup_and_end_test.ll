; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_cleanup_and_end_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_cleanup_and_end_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@test_ending_mtx = common dso_local global i32 0, align 4
@test_ending = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Number of processes spawned: %d\00", align 1
@num_children = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Cleaning up...\00", align 1
@ds_timer = common dso_local global i32* null, align 8
@within_dispatch_timer_handler = common dso_local global i32 0, align 4
@ds_signal = common dso_local global i32* null, align 8
@within_dispatch_signal_handler = common dso_local global i32 0, align 4
@child_pids = common dso_local global i32* null, align 8
@SIGKILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"waitpid returned status %d\00", align 1
@session = common dso_local global i32* null, align 8
@current_test = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@zone_info_array = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_and_end_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_and_end_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @pthread_mutex_lock(i32* @test_ending_mtx)
  %4 = load i32, i32* @test_ending, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @pthread_mutex_unlock(i32* @test_ending_mtx)
  br label %94

8:                                                ; preds = %0
  store i32 1, i32* @test_ending, align 4
  %9 = call i32 @pthread_mutex_unlock(i32* @test_ending_mtx)
  %10 = load i32, i32* @num_children, align 4
  %11 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** @ds_timer, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load i32, i32* @within_dispatch_timer_handler, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** @ds_timer, align 8
  %20 = call i32 @dispatch_source_cancel(i32* %19)
  br label %21

21:                                               ; preds = %18, %15, %8
  %22 = load i32*, i32** @ds_signal, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @within_dispatch_signal_handler, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** @ds_signal, align 8
  %29 = call i32 @dispatch_source_cancel_and_wait(i32* %28)
  br label %30

30:                                               ; preds = %27, %24, %21
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @num_children, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32*, i32** @child_pids, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SIGKILL, align 4
  %42 = call i32 @kill(i32 %40, i32 %41)
  %43 = call i32 @sleep(i32 1)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %31

47:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @num_children, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  %53 = load i32*, i32** @child_pids, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @waitpid(i32 %57, i32* %2, i32 0)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %48

67:                                               ; preds = %48
  %68 = call i32 @sleep(i32 1)
  %69 = call i32 (...) @mach_host_self()
  %70 = call i32 @mach_zone_force_gc(i32 %69)
  %71 = load i32*, i32** @session, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32*, i32** @session, align 8
  %75 = call i32 @ktrace_end(i32* %74, i32 1)
  br label %76

76:                                               ; preds = %73, %67
  store i32 0, i32* %1, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_test, i32 0, i32 0), align 8
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_test, i32 0, i32 1), align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32*, i32** @zone_info_array, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @print_zone_info(i32* %85, i32* %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %77

94:                                               ; preds = %6, %77
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @T_LOG(i8*, ...) #1

declare dso_local i32 @dispatch_source_cancel(i32*) #1

declare dso_local i32 @dispatch_source_cancel_and_wait(i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @mach_zone_force_gc(i32) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i32 @ktrace_end(i32*, i32) #1

declare dso_local i32 @print_zone_info(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
