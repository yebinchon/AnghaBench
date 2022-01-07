; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_init.c_print_flash_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_init.c_print_flash_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"magic %02x\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"segments %02x\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"spi_mode %02x\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"spi_speed %02x\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"spi_size %02x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"40MHz\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"26.7MHz\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"20MHz\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"80MHz\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"SPI Speed      : %s\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"SPI Mode       : %s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"1MB\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"2MB\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"4MB\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"8MB\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"16MB\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"SPI Flash Size : %s\00", align 1
@SPI_FASTRD_MODE = common dso_local global i32 0, align 4
@SPI_FREAD_DIO = common dso_local global i32 0, align 4
@SPI_FREAD_DUAL = common dso_local global i32 0, align 4
@SPI_FREAD_QIO = common dso_local global i32 0, align 4
@SPI_FREAD_QUAD = common dso_local global i32 0, align 4
@SPI_MEM_FASTRD_MODE = common dso_local global i32 0, align 4
@SPI_MEM_FREAD_DIO = common dso_local global i32 0, align 4
@SPI_MEM_FREAD_DUAL = common dso_local global i32 0, align 4
@SPI_MEM_FREAD_QIO = common dso_local global i32 0, align 4
@SPI_MEM_FREAD_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @print_flash_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_flash_info(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load i32, i32* @TAG, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ESP_LOGD(i32 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @TAG, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ESP_LOGD(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @TAG, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ESP_LOGD(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @TAG, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ESP_LOGD(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @TAG, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ESP_LOGD(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %36 [
    i32 129, label %32
    i32 130, label %33
    i32 131, label %34
    i32 128, label %35
  ]

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %37

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %37

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %37

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %37

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %37

37:                                               ; preds = %36, %35, %34, %33, %32
  %38 = load i32, i32* @TAG, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @TAG, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @ESP_LOGI(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %52 [
    i32 135, label %47
    i32 134, label %48
    i32 133, label %49
    i32 132, label %50
    i32 136, label %51
  ]

47:                                               ; preds = %37
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %53

48:                                               ; preds = %37
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %53

49:                                               ; preds = %37
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %53

50:                                               ; preds = %37
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %53

51:                                               ; preds = %37
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %53

52:                                               ; preds = %37
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %53

53:                                               ; preds = %52, %51, %50, %49, %48, %47
  %54 = load i32, i32* @TAG, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @ESP_LOGI(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %55)
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
