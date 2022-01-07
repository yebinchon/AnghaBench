; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_get_tx_buffer_num.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_get_tx_buffer_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"get_tx_buffer_num\00", align 1
@HOST_SLC0HOST_TOKEN_RDATA_REG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TX_BUFFER_MASK = common dso_local global i32 0, align 4
@TX_BUFFER_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_slave_get_tx_buffer_num(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGV(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = load i32, i32* @HOST_SLC0HOST_TOKEN_RDATA_REG, align 4
  %12 = call i64 @esp_slave_read_bytes(%struct.TYPE_4__* %10, i32 %11, i32* %6, i32 4)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @ESP_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %3, align 8
  br label %35

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 16
  %21 = load i32, i32* @TX_BUFFER_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TX_BUFFER_MAX, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = load i32, i32* @TX_BUFFER_MAX, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* @ESP_OK, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %18, %16
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i32 @ESP_LOGV(i32, i8*) #1

declare dso_local i64 @esp_slave_read_bytes(%struct.TYPE_4__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
