; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_esp_partition_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_esp_partition_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@esp_flash_default_chip = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_partition_write(%struct.TYPE_3__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %22, %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %30, i32* %5, align 4
  br label %51

31:                                               ; preds = %21
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %7, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @esp_flash_write(i64 %44, i8* %45, i64 %46, i64 %47)
  store i32 %48, i32* %5, align 4
  br label %51

49:                                               ; preds = %31
  %50 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %41, %29, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @esp_flash_write(i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
