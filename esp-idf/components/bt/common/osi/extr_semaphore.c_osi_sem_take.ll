; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_semaphore.c_osi_sem_take.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_semaphore.c_osi_sem_take.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSI_SEM_MAX_TIMEOUT = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osi_sem_take(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @OSI_SEM_MAX_TIMEOUT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @portMAX_DELAY, align 4
  %13 = call i64 @xSemaphoreTake(i32 %11, i32 %12)
  %14 = load i64, i64* @pdTRUE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 -1, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %9
  br label %29

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %23 = sdiv i32 %21, %22
  %24 = call i64 @xSemaphoreTake(i32 %20, i32 %23)
  %25 = load i64, i64* @pdTRUE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 -2, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %18
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
