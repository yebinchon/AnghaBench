; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_spi_task1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_spi_task1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SPI_TRANS_USE_TXDATA = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"task1:%d\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"task1 terminates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_task1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 32, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 128, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %11 = load i32, i32* @SPI_TRANS_USE_TXDATA, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %27, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 50
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @spi_device_polling_transmit(i32 %20, %struct.TYPE_5__* %4)
  %22 = call i32 @TEST_ESP_OK(i32 %21)
  %23 = load i32, i32* @TAG, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @portMAX_DELAY, align 4
  %33 = call i32 @spi_device_acquire_bus(i32 %31, i32 %32)
  %34 = call i32 @TEST_ESP_OK(i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %46, %30
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 50
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @spi_device_polling_transmit(i32 %39, %struct.TYPE_5__* %4)
  %41 = call i32 @TEST_ESP_OK(i32 %40)
  %42 = load i32, i32* @TAG, align 4
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %35

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @spi_device_release_bus(i32 %50)
  %52 = load i32, i32* @TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8*, i8** %2, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_device_polling_transmit(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @spi_device_acquire_bus(i32, i32) #1

declare dso_local i32 @spi_device_release_bus(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
