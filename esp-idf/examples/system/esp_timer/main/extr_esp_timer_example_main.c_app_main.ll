; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/esp_timer/main/extr_esp_timer_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/esp_timer/main/extr_esp_timer_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@periodic_timer_callback = common dso_local global i32 0, align 4
@__const.app_main.periodic_timer_args = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* null, i32* @periodic_timer_callback }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"one-shot\00", align 1
@oneshot_timer_callback = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Started timers, time since boot: %lld us\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Entering light sleep for 0.5s, time since boot: %lld us\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Woke up from light sleep, time since boot: %lld us\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Stopped and deleted timers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_3__* @__const.app_main.periodic_timer_args to i8*), i64 24, i1 false)
  %7 = call i32 @esp_timer_create(%struct.TYPE_3__* %1, i64* %2)
  %8 = call i32 @ESP_ERROR_CHECK(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32* @oneshot_timer_callback, i32** %13, align 8
  %14 = call i32 @esp_timer_create(%struct.TYPE_3__* %3, i64* %4)
  %15 = call i32 @ESP_ERROR_CHECK(i32 %14)
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @esp_timer_start_periodic(i64 %16, i32 500000)
  %18 = call i32 @ESP_ERROR_CHECK(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @esp_timer_start_once(i64 %19, i32 5000000)
  %21 = call i32 @ESP_ERROR_CHECK(i32 %20)
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 (...) @esp_timer_get_time()
  %24 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %33, %0
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @esp_timer_dump(i32 %29)
  %31 = call i32 @ESP_ERROR_CHECK(i32 %30)
  %32 = call i32 @usleep(i32 2000000)
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %25

36:                                               ; preds = %25
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 (...) @esp_timer_get_time()
  %39 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = call i32 @esp_sleep_enable_timer_wakeup(i32 500000)
  %41 = call i32 @ESP_ERROR_CHECK(i32 %40)
  %42 = call i32 (...) @esp_light_sleep_start()
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 (...) @esp_timer_get_time()
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = call i32 @usleep(i32 2000000)
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @esp_timer_stop(i64 %47)
  %49 = call i32 @ESP_ERROR_CHECK(i32 %48)
  %50 = load i64, i64* %2, align 8
  %51 = call i32 @esp_timer_delete(i64 %50)
  %52 = call i32 @ESP_ERROR_CHECK(i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @esp_timer_delete(i64 %53)
  %55 = call i32 @ESP_ERROR_CHECK(i32 %54)
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #2

declare dso_local i32 @esp_timer_create(%struct.TYPE_3__*, i64*) #2

declare dso_local i32 @esp_timer_start_periodic(i64, i32) #2

declare dso_local i32 @esp_timer_start_once(i64, i32) #2

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #2

declare dso_local i32 @esp_timer_get_time(...) #2

declare dso_local i32 @esp_timer_dump(i32) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @esp_sleep_enable_timer_wakeup(i32) #2

declare dso_local i32 @esp_light_sleep_start(...) #2

declare dso_local i32 @esp_timer_stop(i64) #2

declare dso_local i32 @esp_timer_delete(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
