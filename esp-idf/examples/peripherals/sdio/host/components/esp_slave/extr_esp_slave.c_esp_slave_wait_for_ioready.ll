; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_wait_for_ioready.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_wait_for_ioready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wait_for_ioready\00", align 1
@FUNC1_EN_MASK = common dso_local global i32 0, align 4
@SD_IO_CCCR_FN_READY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"IOR: 0x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_slave_wait_for_ioready(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_LOGV(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @FUNC1_EN_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @SD_IO_CCCR_FN_READY, align 4
  %20 = call i64 @sdmmc_io_read_byte(i32* %18, i32 0, i32 %19, i32* %6)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @TAG, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %12

30:                                               ; preds = %12
  %31 = load i64, i64* @ESP_OK, align 8
  store i64 %31, i64* %2, align 8
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

declare dso_local i32 @ESP_LOGV(i32, i8*) #1

declare dso_local i64 @sdmmc_io_read_byte(i32*, i32, i32, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
