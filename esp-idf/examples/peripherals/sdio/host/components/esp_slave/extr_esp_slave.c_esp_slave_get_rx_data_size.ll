; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_get_rx_data_size.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_get_rx_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"get_rx_data_size: got_bytes: %d\00", align 1
@HOST_SLCHOST_PKT_LEN_REG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@RX_BYTE_MASK = common dso_local global i32 0, align 4
@RX_BYTE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_slave_get_rx_data_size(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @TAG, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ESP_LOGV(i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = load i32, i32* @HOST_SLCHOST_PKT_LEN_REG, align 4
  %15 = call i64 @esp_slave_read_bytes(%struct.TYPE_4__* %13, i32 %14, i32* %6, i32 4)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @ESP_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %3, align 8
  br label %37

21:                                               ; preds = %2
  %22 = load i32, i32* @RX_BYTE_MASK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RX_BYTE_MAX, align 4
  %27 = add nsw i32 %25, %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* @RX_BYTE_MAX, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* @ESP_OK, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32 @ESP_LOGV(i32, i8*, i32) #1

declare dso_local i64 @esp_slave_read_bytes(%struct.TYPE_4__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
