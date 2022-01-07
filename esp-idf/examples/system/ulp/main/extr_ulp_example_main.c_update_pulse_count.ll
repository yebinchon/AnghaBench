; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ulp/main/extr_ulp_example_main.c_update_pulse_count.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ulp/main/extr_ulp_example_main.c_update_pulse_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"plusecnt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Read pulse count from NVS: %5d\0A\00", align 1
@ulp_edge_count = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Pulse count from ULP: %5d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Wrote updated pulse count to NVS: %5d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_pulse_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pulse_count() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %7 = call i32 (...) @nvs_flash_init()
  %8 = call i32 @ESP_ERROR_CHECK(i32 %7)
  %9 = load i8*, i8** %1, align 8
  %10 = load i32, i32* @NVS_READWRITE, align 4
  %11 = call i32 @nvs_open(i8* %9, i32 %10, i32* %3)
  %12 = call i32 @ESP_ERROR_CHECK(i32 %11)
  store i32 0, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @nvs_get_u32(i32 %13, i8* %14, i32* %4)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ESP_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %0
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @ESP_ERR_NVS_NOT_FOUND, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %0
  %24 = phi i1 [ true, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ulp_edge_count, align 4
  %30 = load i32, i32* @UINT16_MAX, align 4
  %31 = and i32 %29, %30
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @ulp_edge_count, align 4
  %34 = srem i32 %33, 2
  store i32 %34, i32* @ulp_edge_count, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @nvs_set_u32(i32 %40, i8* %41, i32 %42)
  %44 = call i32 @ESP_ERROR_CHECK(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @nvs_commit(i32 %45)
  %47 = call i32 @ESP_ERROR_CHECK(i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @nvs_close(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @nvs_flash_init(...) #1

declare dso_local i32 @nvs_open(i8*, i32, i32*) #1

declare dso_local i64 @nvs_get_u32(i32, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @nvs_set_u32(i32, i8*, i32) #1

declare dso_local i32 @nvs_commit(i32) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
