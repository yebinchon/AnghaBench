; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/diskio/extr_diskio_wl.c_ff_wl_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/diskio/extr_diskio_wl.c_ff_wl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ff_wl_write - pdrv=%i, sector=%i, count=%i\0A\00", align 1
@ff_wl_handles = common dso_local global i64* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"wl_erase_range failed (%d)\00", align 1
@RES_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"wl_write failed (%d)\00", align 1
@RES_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_wl_write(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @TAG, align 4
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @ESP_LOGV(i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i64*, i64** @ff_wl_handles, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @assert(i64 %23)
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @wl_sector_size(i64 %27)
  %29 = mul nsw i32 %26, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @wl_sector_size(i64 %31)
  %33 = mul nsw i32 %30, %32
  %34 = call i64 @wl_erase_range(i64 %25, i32 %29, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @ESP_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load i32, i32* @TAG, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @RES_ERROR, align 4
  store i32 %42, i32* %5, align 4
  br label %65

43:                                               ; preds = %4
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @wl_sector_size(i64 %46)
  %48 = mul nsw i32 %45, %47
  %49 = load i64*, i64** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @wl_sector_size(i64 %51)
  %53 = mul nsw i32 %50, %52
  %54 = call i64 @wl_write(i64 %44, i32 %48, i64* %49, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @ESP_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load i32, i32* @TAG, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @ESP_LOGE(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @RES_ERROR, align 4
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %43
  %64 = load i32, i32* @RES_OK, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %58, %38
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @ESP_LOGV(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @wl_erase_range(i64, i32, i32) #1

declare dso_local i32 @wl_sector_size(i64) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i64 @wl_write(i64, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
