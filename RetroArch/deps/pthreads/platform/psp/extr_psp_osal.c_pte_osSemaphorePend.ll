; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osSemaphorePend.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osSemaphorePend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCE_KERNEL_ERROR_OK = common dso_local global i64 0, align 8
@PTE_OS_OK = common dso_local global i32 0, align 4
@SCE_KERNEL_ERROR_WAIT_TIMEOUT = common dso_local global i64 0, align 8
@PTE_OS_TIMEOUT = common dso_local global i32 0, align 4
@PTE_OS_GENERAL_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pte_osSemaphorePend(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = mul i32 %15, 1000
  store i32 %16, i32* %6, align 4
  store i32* %6, i32** %7, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @sceKernelWaitSema(i32 %18, i32 1, i32* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @SCE_KERNEL_ERROR_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @PTE_OS_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @SCE_KERNEL_ERROR_WAIT_TIMEOUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @PTE_OS_TIMEOUT, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @PTE_OS_GENERAL_FAILURE, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %30, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @sceKernelWaitSema(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
