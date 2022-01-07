; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_print_sdio_cis_information.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_print_sdio_cis_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_SIZE = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"CIS data longer than expected, temporary buffer allocated.\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to get the entire CIS data.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @print_sdio_cis_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @print_sdio_cis_information(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [256 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i64 256, i64* %3, align 8
  store i64 1024, i64* %5, align 8
  %9 = load i64, i64* @ESP_OK, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %12 = call i64 @sdmmc_io_get_cis_data(i32* %10, i32* %11, i64 256, i64* %5)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ESP_ERR_INVALID_SIZE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @malloc(i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_LOGW(i32 %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call i64 @sdmmc_io_get_cis_data(i32* %25, i32* %26, i64 %28, i64* %5)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @ESP_ERROR_CHECK(i64 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @sdmmc_io_print_cis_info(i32* %32, i64 %33, i32* null)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @free(i32* %35)
  br label %50

37:                                               ; preds = %1
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @ESP_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @sdmmc_io_print_cis_info(i32* %42, i64 %43, i32* null)
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @TAG, align 4
  %47 = call i32 @ESP_LOGE(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i64, i64* @ESP_OK, align 8
  ret i64 %51
}

declare dso_local i64 @sdmmc_io_get_cis_data(i32*, i32*, i64, i64*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i32 @sdmmc_io_print_cis_info(i32*, i64, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

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
