; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_mtx_contended.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_mtx_contended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lck_mtx_thread_arg = type { i32*, i64, i64* }

@synch = common dso_local global i64 0, align 8
@wait_barrier = common dso_local global i64 0, align 8
@iterations = common dso_local global i32 0, align 4
@test_mtx_lock_unlock_contended_thread = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@release = common dso_local global i32 0, align 4
@relaxed = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lck_mtx_test_mtx_contended(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [2 x %struct.lck_mtx_thread_arg], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast [2 x %struct.lck_mtx_thread_arg]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 48, i1 false)
  store i64 0, i64* @synch, align 8
  store i64 0, i64* @wait_barrier, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* @iterations, align 4
  %14 = call i32 (...) @erase_all_test_mtx_stats()
  %15 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 0
  %16 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %15, i32 0, i32 0
  store i32* null, i32** %16, align 16
  %17 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 1
  %18 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load i64, i64* @test_mtx_lock_unlock_contended_thread, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 0
  %22 = call i64 @kernel_thread_start(i32 %20, %struct.lck_mtx_thread_arg* %21, i32* %8)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @KERN_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %87

27:                                               ; preds = %3
  %28 = load i64, i64* @test_mtx_lock_unlock_contended_thread, align 8
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 1
  %31 = call i64 @kernel_thread_start(i32 %29, %struct.lck_mtx_thread_arg* %30, i32* %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @thread_deallocate(i32 %36)
  store i64 0, i64* %4, align 8
  br label %87

38:                                               ; preds = %27
  %39 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 0
  %40 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 1
  %42 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %41, i32 0, i32 1
  %43 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 0
  %44 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %43, i32 0, i32 2
  store i64* %42, i64** %44, align 16
  %45 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 0
  %46 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %45, i32 0, i32 0
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @release, align 4
  %49 = call i32 @os_atomic_xchg(i32** %46, i32 %47, i32 %48)
  %50 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 1
  %51 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 0
  %53 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %52, i32 0, i32 1
  %54 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 1
  %55 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %54, i32 0, i32 2
  store i64* %53, i64** %55, align 8
  %56 = getelementptr inbounds [2 x %struct.lck_mtx_thread_arg], [2 x %struct.lck_mtx_thread_arg]* %11, i64 0, i64 1
  %57 = getelementptr inbounds %struct.lck_mtx_thread_arg, %struct.lck_mtx_thread_arg* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @release, align 4
  %60 = call i32 @os_atomic_xchg(i32** %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %78, %38
  %62 = load i32, i32* @relaxed, align 4
  %63 = call i32 @os_atomic_load(i64* @wait_barrier, i32 %62)
  %64 = icmp ne i32 %63, 2
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* @THREAD_UNINT, align 4
  %67 = call i32 @assert_wait(i32 ptrtoint (i64* @wait_barrier to i32), i32 %66)
  %68 = load i32, i32* @relaxed, align 4
  %69 = call i32 @os_atomic_load(i64* @wait_barrier, i32 %68)
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %73 = call i32 @thread_block(i32 %72)
  br label %78

74:                                               ; preds = %65
  %75 = call i32 (...) @current_thread()
  %76 = load i32, i32* @THREAD_AWAKENED, align 4
  %77 = call i32 @clear_wait(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %71
  br label %61

79:                                               ; preds = %61
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @thread_deallocate(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @thread_deallocate(i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @get_test_mtx_stats_string(i8* %84, i32 %85)
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %79, %35, %26
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @erase_all_test_mtx_stats(...) #2

declare dso_local i64 @kernel_thread_start(i32, %struct.lck_mtx_thread_arg*, i32*) #2

declare dso_local i32 @thread_deallocate(i32) #2

declare dso_local i32 @os_atomic_xchg(i32**, i32, i32) #2

declare dso_local i32 @os_atomic_load(i64*, i32) #2

declare dso_local i32 @assert_wait(i32, i32) #2

declare dso_local i32 @thread_block(i32) #2

declare dso_local i32 @clear_wait(i32, i32) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i64 @get_test_mtx_stats_string(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
