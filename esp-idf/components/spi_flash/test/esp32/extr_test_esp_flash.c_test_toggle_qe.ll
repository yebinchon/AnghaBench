; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_toggle_qe.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_toggle_qe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@esp_flash_default_chip = common dso_local global %struct.TYPE_7__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"write qe: %d->%d\00", align 1
@SPI_FLASH_QOUT = common dso_local global i8* null, align 8
@SPI_FLASH_SLOWRD = common dso_local global i8* null, align 8
@ESP_ERR_FLASH_NO_RESPONSE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"qe read: %d\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"cannot clear QE bit, this may be normal for Winbond chips.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @test_toggle_qe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_toggle_qe(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @esp_flash_default_chip, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %2, align 8
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = call i64 @esp_flash_get_io_mode(%struct.TYPE_7__* %17, i32* %3)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @TEST_ESP_OK(i64 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = call i32 @check_winbond_chip(%struct.TYPE_7__* %21)
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %91, %13
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %94

26:                                               ; preds = %23
  %27 = load i32, i32* @TAG, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i8*, i8** @SPI_FLASH_QOUT, align 8
  br label %44

42:                                               ; preds = %26
  %43 = load i8*, i8** @SPI_FLASH_SLOWRD, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i8* [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @esp_flash_set_io_mode(%struct.TYPE_7__* %48, i32 %49)
  store i64 %50, i64* %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @ESP_ERR_FLASH_NO_RESPONSE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @ESP_OK, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %56, %53, %44
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @TEST_ESP_OK(i64 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = call i64 @esp_flash_get_io_mode(%struct.TYPE_7__* %65, i32* %8)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @TEST_ESP_OK(i64 %67)
  %69 = load i32, i32* @TAG, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ESP_LOGD(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %62
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @TAG, align 4
  %83 = call i32 @ESP_LOGE(i32 %82, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i8*, i8** %4, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %98

87:                                               ; preds = %78, %75, %62
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @TEST_ASSERT_EQUAL(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %23

94:                                               ; preds = %23
  %95 = load i8*, i8** %4, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %81
  ret void
}

declare dso_local i64 @esp_flash_get_io_mode(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @TEST_ESP_OK(i64) #1

declare dso_local i32 @check_winbond_chip(%struct.TYPE_7__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i64 @esp_flash_set_io_mode(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
