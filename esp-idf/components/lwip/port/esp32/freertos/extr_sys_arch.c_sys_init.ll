; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_OK = common dso_local global i64 0, align 8
@g_lwip_protect_mutex = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"sys_init: failed to init lwip protect mutex\0A\00", align 1
@sys_thread_sem_key = common dso_local global i32 0, align 4
@sys_thread_sem_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_init() #0 {
  %1 = load i64, i64* @ERR_OK, align 8
  %2 = call i64 @sys_mutex_new(i32* @g_lwip_protect_mutex)
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 @ESP_LOGE(i32 %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @sys_thread_sem_free, align 4
  %9 = call i32 @pthread_key_create(i32* @sys_thread_sem_key, i32 %8)
  %10 = call i32 (...) @esp_vfs_lwip_sockets_register()
  ret void
}

declare dso_local i64 @sys_mutex_new(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @pthread_key_create(i32*, i32) #1

declare dso_local i32 @esp_vfs_lwip_sockets_register(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
