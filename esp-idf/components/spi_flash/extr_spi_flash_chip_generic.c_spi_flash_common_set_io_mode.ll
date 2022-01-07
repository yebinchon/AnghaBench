; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_generic.c_spi_flash_common_set_io_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_generic.c_spi_flash_common_set_io_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*, i32)*, i64 (%struct.TYPE_16__*, i32)* }

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"set_io_mode: status before 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"set_io_mode: status update 0x%x\00", align 1
@DEFAULT_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"set_io_mode: status after 0x%x\00", align 1
@ESP_ERR_FLASH_NO_RESPONSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spi_flash_common_set_io_mode(%struct.TYPE_16__* %0, i64 (%struct.TYPE_16__*, i64)* %1, i64 (%struct.TYPE_16__*, i64*)* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64 (%struct.TYPE_16__*, i64)*, align 8
  %8 = alloca i64 (%struct.TYPE_16__*, i64*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i64 (%struct.TYPE_16__*, i64)* %1, i64 (%struct.TYPE_16__*, i64)** %7, align 8
  store i64 (%struct.TYPE_16__*, i64*)* %2, i64 (%struct.TYPE_16__*, i64*)** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* @ESP_OK, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = call i32 @esp_flash_is_quad_mode(%struct.TYPE_16__* %19)
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %14, align 4
  store i32 1, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %4
  %25 = load i64 (%struct.TYPE_16__*, i64*)*, i64 (%struct.TYPE_16__*, i64*)** %8, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = call i64 %25(%struct.TYPE_16__* %26, i64* %16)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @ESP_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %5, align 8
  br label %119

33:                                               ; preds = %24
  %34 = load i32, i32* @TAG, align 4
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @ESP_EARLY_LOGD(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %9, align 8
  %42 = or i64 %40, %41
  store i64 %42, i64* %15, align 8
  br label %48

43:                                               ; preds = %33
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %9, align 8
  %46 = xor i64 %45, -1
  %47 = and i64 %44, %46
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* @TAG, align 4
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @ESP_EARLY_LOGV(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %117

60:                                               ; preds = %57
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = call i32 %65(%struct.TYPE_16__* %66, i32 0)
  %68 = load i64 (%struct.TYPE_16__*, i64)*, i64 (%struct.TYPE_16__*, i64)** %7, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i64 %68(%struct.TYPE_16__* %69, i64 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @ESP_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %5, align 8
  br label %119

77:                                               ; preds = %60
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64 (%struct.TYPE_16__*, i32)*, i64 (%struct.TYPE_16__*, i32)** %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = load i32, i32* @DEFAULT_IDLE_TIMEOUT, align 4
  %85 = call i64 %82(%struct.TYPE_16__* %83, i32 %84)
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @ESP_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i64, i64* %10, align 8
  store i64 %90, i64* %5, align 8
  br label %119

91:                                               ; preds = %77
  %92 = load i64 (%struct.TYPE_16__*, i64*)*, i64 (%struct.TYPE_16__*, i64*)** %8, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = call i64 %92(%struct.TYPE_16__* %93, i64* %17)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @ESP_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i64, i64* %10, align 8
  store i64 %99, i64* %5, align 8
  br label %119

100:                                              ; preds = %91
  %101 = load i32, i32* @TAG, align 4
  %102 = load i64, i64* %17, align 8
  %103 = call i32 @ESP_EARLY_LOGD(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %15, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i64, i64* @ESP_ERR_FLASH_NO_RESPONSE, align 8
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %107, %100
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = call i32 %114(%struct.TYPE_16__* %115, i32 1)
  br label %117

117:                                              ; preds = %109, %57
  %118 = load i64, i64* %10, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %117, %98, %89, %75, %31
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @esp_flash_is_quad_mode(%struct.TYPE_16__*) #1

declare dso_local i32 @ESP_EARLY_LOGD(i32, i8*, i64) #1

declare dso_local i32 @ESP_EARLY_LOGV(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
