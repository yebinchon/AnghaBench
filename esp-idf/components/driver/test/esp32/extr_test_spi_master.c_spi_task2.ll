; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_spi_task2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_spi_task2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@SPI_TRANS_USE_TXDATA = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"task2: %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"task2 terminates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_task2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 32, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 128, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %13 = load i32, i32* @SPI_TRANS_USE_TXDATA, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @portMAX_DELAY, align 4
  %20 = call i32 @spi_device_acquire_bus(i32 %18, i32 %19)
  %21 = call i32 @TEST_ESP_OK(i32 %20)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %33, %1
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 50
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @spi_device_polling_transmit(i32 %26, %struct.TYPE_7__* %4)
  %28 = call i32 @TEST_ESP_OK(i32 %27)
  %29 = load i32, i32* @TAG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %22

36:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %45, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 50
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @portMAX_DELAY, align 4
  %43 = call i32 @spi_device_queue_trans(i32 %41, %struct.TYPE_7__* %4, i32 %42)
  %44 = call i32 @TEST_ESP_OK(i32 %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %37

48:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 50
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @portMAX_DELAY, align 4
  %55 = call i32 @spi_device_get_trans_result(i32 %53, %struct.TYPE_7__** %5, i32 %54)
  %56 = call i32 @TEST_ESP_OK(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = icmp eq %struct.TYPE_7__* %57, %4
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* @TAG, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %49

68:                                               ; preds = %49
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @spi_device_release_bus(i32 %69)
  %71 = call i32 @vTaskDelay(i32 1)
  %72 = load i32, i32* @TAG, align 4
  %73 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i8*, i8** %2, align 8
  %75 = bitcast i8* %74 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_device_acquire_bus(i32, i32) #1

declare dso_local i32 @spi_device_polling_transmit(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @spi_device_queue_trans(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @spi_device_get_trans_result(i32, %struct.TYPE_7__**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @spi_device_release_bus(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
