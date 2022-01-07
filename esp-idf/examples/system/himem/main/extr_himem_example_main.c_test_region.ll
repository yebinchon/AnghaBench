; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/himem/main/extr_himem_example_main.c_test_region.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/himem/main/extr_himem_example_main.c_test_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_HIMEM_BLKSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error in block %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_region(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @esp_himem_alloc(i32 %12, i32* %5)
  %14 = call i32 @ESP_ERROR_CHECK(i32 %13)
  %15 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %16 = call i32 @esp_himem_alloc_map_range(i32 %15, i32* %6)
  %17 = call i32 @ESP_ERROR_CHECK(i32 %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %41, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  store i32* null, i32** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %27 = bitcast i32** %9 to i8**
  %28 = call i32 @esp_himem_map(i32 %23, i32 %24, i32 %25, i32 0, i32 %26, i32 0, i8** %27)
  %29 = call i32 @ESP_ERROR_CHECK(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  %32 = xor i32 %30, %31
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %35 = call i32 @fill_mem_seed(i32 %32, i32* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %39 = call i32 @esp_himem_unmap(i32 %36, i32* %37, i32 %38)
  %40 = call i32 @ESP_ERROR_CHECK(i32 %39)
  br label %41

41:                                               ; preds = %22
  %42 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %18

45:                                               ; preds = %18
  %46 = call i32 @vTaskDelay(i32 5)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %82, %45
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %56 = bitcast i32** %11 to i8**
  %57 = call i32 @esp_himem_map(i32 %52, i32 %53, i32 %54, i32 0, i32 %55, i32 0, i8** %56)
  %58 = call i32 @ESP_ERROR_CHECK(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %4, align 4
  %61 = xor i32 %59, %60
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @check_mem_seed(i32 %61, i32* %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %70 = sdiv i32 %68, %69
  %71 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %70)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %67, %51
  %73 = load i32, i32* %6, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %76 = call i32 @esp_himem_unmap(i32 %73, i32* %74, i32 %75)
  %77 = call i32 @ESP_ERROR_CHECK(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %86

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* @ESP_HIMEM_BLKSZ, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %47

86:                                               ; preds = %80, %47
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @esp_himem_free(i32 %87)
  %89 = call i32 @ESP_ERROR_CHECK(i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @esp_himem_free_map_range(i32 %90)
  %92 = call i32 @ESP_ERROR_CHECK(i32 %91)
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_himem_alloc(i32, i32*) #1

declare dso_local i32 @esp_himem_alloc_map_range(i32, i32*) #1

declare dso_local i32 @esp_himem_map(i32, i32, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @fill_mem_seed(i32, i32*, i32) #1

declare dso_local i32 @esp_himem_unmap(i32, i32*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @check_mem_seed(i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @esp_himem_free(i32) #1

declare dso_local i32 @esp_himem_free_map_range(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
