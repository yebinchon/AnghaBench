; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_esp_partition_erase_range.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_esp_partition_erase_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@SPI_FLASH_SEC_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_partition_erase_range(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %20, %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %28, i32* %4, align 4
  br label %54

29:                                               ; preds = %19
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %32 = urem i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %35, i32* %4, align 4
  br label %54

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %39 = urem i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @esp_flash_erase_region(i32 %46, i64 %51, i64 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %43, %41, %34, %27, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @esp_flash_erase_region(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
