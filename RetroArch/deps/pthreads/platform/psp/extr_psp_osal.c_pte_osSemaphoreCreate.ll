; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osSemaphoreCreate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osSemaphoreCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pte_osSemaphoreCreate.semCtr = internal global i32 0, align 4
@MAX_PSP_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pthread_sem%d\00", align 1
@SEM_VALUE_MAX = common dso_local global i32 0, align 4
@PTE_OS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pte_osSemaphoreCreate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @pte_osSemaphoreCreate.semCtr, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @pte_osSemaphoreCreate.semCtr, align 4
  %9 = load i32, i32* @MAX_PSP_UID, align 4
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* @pte_osSemaphoreCreate.semCtr, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %14 = load i32, i32* @pte_osSemaphoreCreate.semCtr, align 4
  %15 = call i32 @snprintf(i8* %13, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SEM_VALUE_MAX, align 4
  %19 = call i32 @sceKernelCreateSema(i8* %16, i32 0, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @PTE_OS_OK, align 4
  ret i32 %22
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sceKernelCreateSema(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
