; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/espnow/main/extr_espnow_example_main.c_example_espnow_data_parse.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/espnow/main/extr_espnow_example_main.c_example_espnow_data_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Receive ESPNOW data too short, len:%d\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @example_espnow_data_parse(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 20
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* @TAG, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %6, align 4
  br label %55

24:                                               ; preds = %5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* @UINT16_MAX, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %44 = bitcast %struct.TYPE_2__* %43 to i32*
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @esp_crc16_le(i32 %42, i32* %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %24
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %50, %20
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_crc16_le(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
