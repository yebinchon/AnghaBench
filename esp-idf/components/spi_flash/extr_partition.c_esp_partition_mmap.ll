; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_esp_partition_mmap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_esp_partition_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_SIZE = common dso_local global i64 0, align 8
@esp_flash_default_chip = common dso_local global i64 0, align 8
@ESP_ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_partition_mmap(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %28, i64* %7, align 8
  br label %78

29:                                               ; preds = %6
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @ESP_ERR_INVALID_SIZE, align 8
  store i64 %38, i64* %7, align 8
  br label %78

39:                                               ; preds = %29
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @esp_flash_default_chip, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* @ESP_ERR_NOT_SUPPORTED, align 8
  store i64 %46, i64* %7, align 8
  br label %78

47:                                               ; preds = %39
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = and i64 %53, 65535
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %14, align 8
  %56 = and i64 %55, 4294901760
  store i64 %56, i64* %16, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i8**, i8*** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i64 @spi_flash_mmap(i64 %57, i64 %60, i32 %61, i8** %62, i32* %63)
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* @ESP_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %47
  %69 = load i8**, i8*** %12, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load i64, i64* %15, align 8
  %73 = add i64 %71, %72
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8**, i8*** %12, align 8
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %68, %47
  %77 = load i64, i64* %17, align 8
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %76, %45, %37, %27
  %79 = load i64, i64* %7, align 8
  ret i64 %79
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @spi_flash_mmap(i64, i64, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
