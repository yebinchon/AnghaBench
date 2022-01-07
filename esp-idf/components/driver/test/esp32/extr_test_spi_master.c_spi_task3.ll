; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_spi_task3.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_spi_task3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@SPI_TRANS_USE_TXDATA = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"task3: %d\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"task3 terminates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_task3(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 32, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 128, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %14 = load i32, i32* @SPI_TRANS_USE_TXDATA, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %30, %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 30
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @spi_device_polling_transmit(i32 %23, %struct.TYPE_7__* %4)
  %25 = call i32 @TEST_ESP_OK(i32 %24)
  %26 = load i32, i32* @TAG, align 4
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @portMAX_DELAY, align 4
  %36 = call i32 @spi_device_acquire_bus(i32 %34, i32 %35)
  %37 = call i32 @TEST_ESP_OK(i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %49, %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 20
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @spi_device_polling_transmit(i32 %42, %struct.TYPE_7__* %4)
  %44 = call i32 @TEST_ESP_OK(i32 %43)
  %45 = load i32, i32* @TAG, align 4
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  %48 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %38

52:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %61, %52
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 50
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @portMAX_DELAY, align 4
  %59 = call i32 @spi_device_queue_trans(i32 %57, %struct.TYPE_7__* %4, i32 %58)
  %60 = call i32 @TEST_ESP_OK(i32 %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %53

64:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 50
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @portMAX_DELAY, align 4
  %71 = call i32 @spi_device_get_trans_result(i32 %69, %struct.TYPE_7__** %5, i32 %70)
  %72 = call i32 @TEST_ESP_OK(i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = icmp eq %struct.TYPE_7__* %73, %4
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* @TAG, align 4
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @spi_device_release_bus(i32 %85)
  %87 = load i32, i32* @TAG, align 4
  %88 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i8*, i8** %2, align 8
  %90 = bitcast i8* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  %92 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_device_polling_transmit(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @spi_device_acquire_bus(i32, i32) #1

declare dso_local i32 @spi_device_queue_trans(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @spi_device_get_trans_result(i32, %struct.TYPE_7__**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @spi_device_release_bus(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
