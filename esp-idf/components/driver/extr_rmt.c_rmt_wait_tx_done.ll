; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_wait_tx_done.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_wait_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RMT_CHANNEL_MAX = common dso_local global i64 0, align 8
@RMT_CHANNEL_ERROR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@p_rmt_obj = common dso_local global %struct.TYPE_2__** null, align 8
@RMT_DRIVER_ERROR_STR = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@RMT_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Timeout on wait_tx_done\00", align 1
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmt_wait_tx_done(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @RMT_CHANNEL_MAX, align 8
  %8 = icmp ult i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @RMT_CHANNEL_ERROR_STR, align 4
  %11 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %12 = call i32 @RMT_CHECK(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_rmt_obj, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @RMT_DRIVER_ERROR_STR, align 4
  %20 = load i32, i32* @ESP_FAIL, align 4
  %21 = call i32 @RMT_CHECK(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_rmt_obj, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @xSemaphoreTake(i32 %27, i64 %28)
  %30 = load i64, i64* @pdTRUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_rmt_obj, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_rmt_obj, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @xSemaphoreGive(i32 %43)
  %45 = load i32, i32* @ESP_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %2
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @RMT_TAG, align 4
  %51 = call i32 @ESP_LOGE(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %32
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @RMT_CHECK(i32, i32, i32) #1

declare dso_local i64 @xSemaphoreTake(i32, i64) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
