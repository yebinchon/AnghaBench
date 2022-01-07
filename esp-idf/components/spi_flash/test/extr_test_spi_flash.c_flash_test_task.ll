; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/extr_test_spi_flash.c_flash_test_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/extr_test_spi_flash.c_flash_test_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_test_ctx = type { i32, i32, i32 }

@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@SPI_FLASH_SEC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"t%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"es%d\0A\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Erase failed\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ed%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Write failed at offset=%d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"wd%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Read failed at offset=%d\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Read invalid value=%08x at offset=%d\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"td%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @flash_test_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flash_test_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flash_test_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.flash_test_ctx*
  store %struct.flash_test_ctx* %10, %struct.flash_test_ctx** %3, align 8
  %11 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %12 = sdiv i32 100, %11
  %13 = call i32 @vTaskDelay(i32 %12)
  %14 = load i32, i32* @start, align 4
  %15 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %16 = sdiv i32 %14, %15
  %17 = load %struct.flash_test_ctx*, %struct.flash_test_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.flash_test_ctx, %struct.flash_test_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @spi_flash_erase_sector(i32 %25)
  %27 = load i64, i64* @ESP_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.flash_test_ctx*, %struct.flash_test_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.flash_test_ctx, %struct.flash_test_ctx* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.flash_test_ctx*, %struct.flash_test_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.flash_test_ctx, %struct.flash_test_ctx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xSemaphoreGive(i32 %35)
  %37 = call i32 @vTaskDelete(i32* null)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %42 = sdiv i32 0, %41
  %43 = call i32 @vTaskDelay(i32 %42)
  store i32 -1412623820, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %63, %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i64 @spi_flash_write(i32 %53, i32* %5, i32 4)
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load %struct.flash_test_ctx*, %struct.flash_test_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.flash_test_ctx, %struct.flash_test_ctx* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %66

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %6, align 4
  br label %44

66:                                               ; preds = %57, %44
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %70 = sdiv i32 0, %69
  %71 = call i32 @vTaskDelay(i32 %70)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %101, %66
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i64 @spi_flash_read(i32 %81, i32* %7, i32 4)
  %83 = load i64, i64* @ESP_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load %struct.flash_test_ctx*, %struct.flash_test_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.flash_test_ctx, %struct.flash_test_ctx* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %104

90:                                               ; preds = %76
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.flash_test_ctx*, %struct.flash_test_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.flash_test_ctx, %struct.flash_test_ctx* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %104

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %8, align 4
  br label %72

104:                                              ; preds = %94, %85, %72
  %105 = load i32, i32* %4, align 4
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load %struct.flash_test_ctx*, %struct.flash_test_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.flash_test_ctx, %struct.flash_test_ctx* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @xSemaphoreGive(i32 %109)
  %111 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @spi_flash_erase_sector(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

declare dso_local i64 @spi_flash_write(i32, i32*, i32) #1

declare dso_local i64 @spi_flash_read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
