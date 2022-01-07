; ModuleID = '/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread.c_esp_pthread_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread.c_esp_pthread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_pthread_cfg_key = common dso_local global i32 0, align 4
@esp_pthread_cfg_key_destructor = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@s_threads_mux = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_pthread_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @esp_pthread_cfg_key_destructor, align 4
  %3 = call i64 @pthread_key_create(i32* @s_pthread_cfg_key, i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %6, i32* %1, align 4
  br label %17

7:                                                ; preds = %0
  %8 = call i32* (...) @xSemaphoreCreateMutex()
  store i32* %8, i32** @s_threads_mux, align 8
  %9 = load i32*, i32** @s_threads_mux, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @s_pthread_cfg_key, align 4
  %13 = call i32 @pthread_key_delete(i32 %12)
  %14 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %7
  %16 = load i32, i32* @ESP_OK, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %11, %5
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i64 @pthread_key_create(i32*, i32) #1

declare dso_local i32* @xSemaphoreCreateMutex(...) #1

declare dso_local i32 @pthread_key_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
