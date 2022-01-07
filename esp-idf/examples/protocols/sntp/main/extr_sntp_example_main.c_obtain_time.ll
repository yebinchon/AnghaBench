; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/sntp/main/extr_sntp_example_main.c_obtain_time.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/sntp/main/extr_sntp_example_main.c_obtain_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@SNTP_SYNC_STATUS_RESET = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Waiting for system time to be set... (%d/%d)\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @obtain_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obtain_time() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tm, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @nvs_flash_init()
  %6 = call i32 @ESP_ERROR_CHECK(i32 %5)
  %7 = call i32 (...) @esp_netif_init()
  %8 = call i32 (...) @esp_event_loop_create_default()
  %9 = call i32 @ESP_ERROR_CHECK(i32 %8)
  %10 = call i32 (...) @example_connect()
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = call i32 (...) @initialize_sntp()
  store i32 0, i32* %1, align 4
  %13 = bitcast %struct.tm* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  store i32 10, i32* %4, align 4
  br label %14

14:                                               ; preds = %24, %0
  %15 = call i64 (...) @sntp_get_sync_status()
  %16 = load i64, i64* @SNTP_SYNC_STATUS_RESET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = icmp slt i32 %20, 10
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = load i32, i32* @TAG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26, i32 10)
  %28 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %29 = sdiv i32 2000, %28
  %30 = call i32 @vTaskDelay(i32 %29)
  br label %14

31:                                               ; preds = %22
  %32 = call i32 @time(i32* %1)
  %33 = call i32 @localtime_r(i32* %1, %struct.tm* %2)
  %34 = call i32 (...) @example_disconnect()
  %35 = call i32 @ESP_ERROR_CHECK(i32 %34)
  ret void
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @nvs_flash_init(...) #1

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32 @example_connect(...) #1

declare dso_local i32 @initialize_sntp(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @sntp_get_sync_status(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @example_disconnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
