; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pet_initted = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kperf_lck_grp = common dso_local global i32 0, align 4
@pet_lock = common dso_local global i32 0, align 4
@PERF_PET_THREAD = common dso_local global i32 0, align 4
@pet_thread_loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"kperf sampling\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @pet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pet_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* @pet_initted, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %7, i64* %1, align 8
  br label %30

8:                                                ; preds = %0
  %9 = call i32 @lck_mtx_alloc_init(i32* @kperf_lck_grp, i32* null)
  store i32 %9, i32* @pet_lock, align 4
  %10 = load i32, i32* @pet_lock, align 4
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @PERF_PET_THREAD, align 4
  %13 = call i32 @BUF_INFO(i32 %12, i32 0)
  %14 = load i32, i32* @pet_thread_loop, align 4
  %15 = call i64 @kernel_thread_start(i32 %14, i32* null, i32* %2)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @KERN_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = load i32, i32* @pet_lock, align 4
  %21 = call i32 @lck_mtx_free(i32 %20, i32* @kperf_lck_grp)
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %1, align 8
  br label %30

23:                                               ; preds = %8
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @thread_set_thread_name(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @thread_deallocate(i32 %26)
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* @pet_initted, align 8
  %29 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %29, i64* %1, align 8
  br label %30

30:                                               ; preds = %23, %19, %6
  %31 = load i64, i64* %1, align 8
  ret i64 %31
}

declare dso_local i32 @lck_mtx_alloc_init(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BUF_INFO(i32, i32) #1

declare dso_local i64 @kernel_thread_start(i32, i32*, i32*) #1

declare dso_local i32 @lck_mtx_free(i32, i32*) #1

declare dso_local i32 @thread_set_thread_name(i32, i8*) #1

declare dso_local i32 @thread_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
