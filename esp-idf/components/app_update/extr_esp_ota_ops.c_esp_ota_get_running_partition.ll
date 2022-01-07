; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_running_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_running_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@esp_ota_get_running_partition.curr_partition = internal global %struct.TYPE_5__* null, align 8
@SPI_FLASH_CACHE2PHYS_FAIL = common dso_local global i64 0, align 8
@ESP_PARTITION_TYPE_APP = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @esp_ota_get_running_partition() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @esp_ota_get_running_partition.curr_partition, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @esp_ota_get_running_partition.curr_partition, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %1, align 8
  br label %54

9:                                                ; preds = %0
  %10 = call i64 @spi_flash_cache2phys(%struct.TYPE_5__* (...)* bitcast (%struct.TYPE_5__* ()* @esp_ota_get_running_partition to %struct.TYPE_5__* (...)*))
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @SPI_FLASH_CACHE2PHYS_FAIL, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %17 = load i32, i32* @ESP_PARTITION_SUBTYPE_ANY, align 4
  %18 = call i32* @esp_partition_find(i32 %16, i32 %17, i32* null)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %23

23:                                               ; preds = %49, %9
  %24 = load i32*, i32** %3, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_5__* @esp_partition_get(i32* %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %4, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = load i64, i64* %2, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @esp_partition_iterator_release(i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** @esp_ota_get_running_partition.curr_partition, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %1, align 8
  br label %54

49:                                               ; preds = %34, %26
  %50 = load i32*, i32** %3, align 8
  %51 = call i32* @esp_partition_next(i32* %50)
  store i32* %51, i32** %3, align 8
  br label %23

52:                                               ; preds = %23
  %53 = call i32 (...) @abort() #3
  unreachable

54:                                               ; preds = %44, %7
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %55
}

declare dso_local i64 @spi_flash_cache2phys(%struct.TYPE_5__* (...)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @esp_partition_find(i32, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @esp_partition_get(i32*) #1

declare dso_local i32 @esp_partition_iterator_release(i32*) #1

declare dso_local i32* @esp_partition_next(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
