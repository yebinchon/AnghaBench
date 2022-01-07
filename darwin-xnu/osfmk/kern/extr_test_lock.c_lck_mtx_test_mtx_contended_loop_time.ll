; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_mtx_contended_loop_time.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_mtx_contended_loop_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lck_mtx_thread_arg = type { i32*, i64, i64* }

@synch = common dso_local global i64 0, align 8
@wait_barrier = common dso_local global i64 0, align 8
@iterations = common dso_local global i32 0, align 4
@test_mtx_lck_unlock_contended_loop_time_thread = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@release = common dso_local global i32 0, align 4
@acquire = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@end_loop_time = common dso_local global i64 0, align 8
@start_loop_time = common dso_local global i64 0, align 8
@end_loop_time_run = common dso_local global i64 0, align 8
@start_loop_time_run = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"total time %llu ns total run time %llu ns \00", align 1
@TEST_MTX_LOCK_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lck_mtx_test_mtx_contended_loop_time(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.lck_mtx_thread_arg], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast [2 x %struct.lck_mtx_thread_arg]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 48, i1 false)
  store i64 0, i64* @synch, align 8
  store i64 0, i64* @wait_barrier, align 8
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* @iterations, align 4
  %17 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 0
  %18 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %17, i32 0, i32 0
  store i32* null, i32** %18, align 16
  %19 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 1
  %20 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i64, i64* @test_mtx_lck_unlock_contended_loop_time_thread, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 0
  %24 = call i64 @kernel_thread_start(i32 %22, %struct.lck_mtx_thread_arg* %23, i32* %8)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @KERN_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

29:                                               ; preds = %3
  %30 = load i64, i64* @test_mtx_lck_unlock_contended_loop_time_thread, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 1
  %33 = call i64 @kernel_thread_start(i32 %31, %struct.lck_mtx_thread_arg* %32, i32* %9)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @thread_deallocate(i32 %38)
  store i32 0, i32* %4, align 4
  br label %133

40:                                               ; preds = %29
  %41 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 0
  %42 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 1
  %44 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %43, i32 0, i32 1
  %45 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 0
  %46 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %45, i32 0, i32 2
  store i64* %44, i64** %46, align 16
  %47 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 0
  %48 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @release, align 4
  %51 = call i32 @os_atomic_xchg(i32** %48, i32 %49, i32 %50)
  %52 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 1
  %53 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 0
  %55 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %54, i32 0, i32 1
  %56 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 1
  %57 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %56, i32 0, i32 2
  store i64* %55, i64** %57, align 8
  %58 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %12, i64 0, i64 1
  %59 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @release, align 4
  %62 = call i32 @os_atomic_xchg(i32** %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %80, %40
  %64 = load i32, i32* @acquire, align 4
  %65 = call i32 @os_atomic_load(i64* @wait_barrier, i32 %64)
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* @THREAD_UNINT, align 4
  %69 = call i32 @assert_wait(i32 ptrtoint (i64* @wait_barrier to i32), i32 %68)
  %70 = load i32, i32* @acquire, align 4
  %71 = call i32 @os_atomic_load(i64* @wait_barrier, i32 %70)
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %75 = call i32 @thread_block(i32 %74)
  br label %80

76:                                               ; preds = %67
  %77 = call i32 (...) @current_thread()
  %78 = load i32, i32* @THREAD_AWAKENED, align 4
  %79 = call i32 @clear_wait(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %63

81:                                               ; preds = %63
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @thread_deallocate(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @thread_deallocate(i32 %84)
  %86 = load i64, i64* @end_loop_time, align 8
  %87 = load i64, i64* @start_loop_time, align 8
  %88 = sub nsw i64 %86, %87
  %89 = call i32 @absolutetime_to_nanoseconds(i64 %88, i32* %13)
  %90 = load i64, i64* @end_loop_time_run, align 8
  %91 = load i64, i64* @start_loop_time_run, align 8
  %92 = sub nsw i64 %90, %91
  %93 = call i32 @absolutetime_to_nanoseconds(i64 %92, i32* %14)
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %96, i32* %11, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %100, i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @TEST_MTX_LOCK_STATS, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %114, %115
  %117 = call i64 @print_test_mtx_stats_string_name(i32 %109, i8* %113, i32 %116)
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %11, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %126, %127
  %129 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %125, i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %81, %37, %28
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kernel_thread_start(i32, %struct.lck_mtx_thread_arg*, i32*) #2

declare dso_local i32 @thread_deallocate(i32) #2

declare dso_local i32 @os_atomic_xchg(i32**, i32, i32) #2

declare dso_local i32 @os_atomic_load(i64*, i32) #2

declare dso_local i32 @assert_wait(i32, i32) #2

declare dso_local i32 @thread_block(i32) #2

declare dso_local i32 @clear_wait(i32, i32) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i32 @absolutetime_to_nanoseconds(i64, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @print_test_mtx_stats_string_name(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
