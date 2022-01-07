; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_permutations.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/test/esp32/extr_test_esp_flash.c_test_permutations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.TYPE_11__ = type { i64 }

@SPI_FLASH_SEC_SIZE = common dso_local global i64 0, align 8
@SPI_FLASH_READ_MODE_MIN = common dso_local global i8* null, align 8
@ESP_FLASH_SPEED_MIN = common dso_local global i8* null, align 8
@ESP_FLASH_SPEED_MAX = common dso_local global i64 0, align 8
@SPI_FLASH_READ_MODE_MAX = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"test flash io mode: %d, speed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_permutations(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @memcpy(%struct.TYPE_10__* %3, %struct.TYPE_10__* %12, i32 24)
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %4, align 8
  store i32 4, i32* %6, align 4
  %14 = call i32* @malloc(i32 4)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @TEST_ASSERT_NOT_NULL(i32* %15)
  %17 = call i32 @srand(i32 778)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %27, %1
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = call i32 (...) @rand()
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %18

30:                                               ; preds = %18
  %31 = call %struct.TYPE_11__* (...) @get_test_data_partition()
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %9, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SPI_FLASH_SEC_SIZE, align 8
  %36 = add nsw i64 6, %35
  %37 = icmp sgt i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @TEST_ASSERT(i32 %38)
  %40 = load i8*, i8** @SPI_FLASH_READ_MODE_MIN, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @ESP_FLASH_SPEED_MIN, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = call i32 @setup_new_chip(%struct.TYPE_10__* %46, i32** %5)
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @write_large_buffer(i32* %48, %struct.TYPE_11__* %49, i32* %50, i32 4)
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @read_and_check(i32* %52, %struct.TYPE_11__* %53, i32* %54, i32 4)
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @teardown_test_chip(i32* %56, i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %109

65:                                               ; preds = %30
  %66 = load i8*, i8** @ESP_FLASH_SPEED_MIN, align 8
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %105, %65
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @ESP_FLASH_SPEED_MAX, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %68
  %73 = load i8*, i8** @SPI_FLASH_READ_MODE_MIN, align 8
  %74 = ptrtoint i8* %73 to i64
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %79, %72
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @SPI_FLASH_READ_MODE_MAX, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = load i32, i32* @TAG, align 4
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @ESP_LOGI(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load i64, i64* %11, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = call i32 @setup_new_chip(%struct.TYPE_10__* %92, i32** %5)
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @read_and_check(i32* %94, %struct.TYPE_11__* %95, i32* %96, i32 4)
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @teardown_test_chip(i32* %98, i32 %101)
  %103 = load i64, i64* %11, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %11, align 8
  br label %75

105:                                              ; preds = %75
  %106 = load i64, i64* %10, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %10, align 8
  br label %68

108:                                              ; preds = %68
  br label %116

109:                                              ; preds = %30
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @write_large_buffer(i32* null, %struct.TYPE_11__* %110, i32* %111, i32 4)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @read_and_check(i32* null, %struct.TYPE_11__* %113, i32* %114, i32 4)
  br label %116

116:                                              ; preds = %109, %108
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @free(i32* %117)
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_NULL(i32*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_11__* @get_test_data_partition(...) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @setup_new_chip(%struct.TYPE_10__*, i32**) #1

declare dso_local i32 @write_large_buffer(i32*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @read_and_check(i32*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @teardown_test_chip(i32*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i64, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
