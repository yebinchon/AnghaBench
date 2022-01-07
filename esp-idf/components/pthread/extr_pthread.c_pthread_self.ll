; ModuleID = '/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread.c_pthread_self.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread.c_pthread_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_threads_mux = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_self() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @s_threads_mux, align 4
  %3 = load i32, i32* @portMAX_DELAY, align 4
  %4 = call i64 @xSemaphoreTake(i32 %2, i32 %3)
  %5 = load i64, i64* @pdTRUE, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @assert(i32 0)
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %11 = call i32* @pthread_find(i32 %10)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call i32 @assert(i32 0)
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i32, i32* @s_threads_mux, align 4
  %18 = call i32 @xSemaphoreGive(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = ptrtoint i32* %19 to i32
  ret i32 %20
}

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @pthread_find(i32) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
