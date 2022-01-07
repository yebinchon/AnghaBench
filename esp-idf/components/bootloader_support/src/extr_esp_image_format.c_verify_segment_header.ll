; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_verify_segment_header.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_verify_segment_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SIXTEEN_MB = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid segment length 0x%x\00", align 1
@ESP_ERR_IMAGE_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"segment %d map_segment %d segment_data_offs 0x%x load_addr 0x%x\00", align 1
@SPI_FLASH_MMU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Segment %d load address 0x%08x, doesn't match data 0x%08x\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32, i32)* @verify_segment_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_segment_header(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SIXTEEN_MB, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @TAG, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* @ESP_ERR_IMAGE_INVALID, align 4
  store i32 %33, i32* %5, align 4
  br label %69

34:                                               ; preds = %17
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @should_map(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @TAG, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ESP_LOGV(i32 %40, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SPI_FLASH_MMU_PAGE_SIZE, align 4
  %51 = srem i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SPI_FLASH_MMU_PAGE_SIZE, align 4
  %54 = srem i32 %52, %53
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @TAG, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* @ESP_ERR_IMAGE_INVALID, align 4
  store i32 %66, i32* %5, align 4
  br label %69

67:                                               ; preds = %48, %34
  %68 = load i32, i32* @ESP_OK, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %65, %32
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, ...) #1

declare dso_local i32 @should_map(i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
