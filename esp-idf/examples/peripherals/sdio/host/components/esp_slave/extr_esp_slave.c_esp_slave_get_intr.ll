; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_get_intr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/components/esp_slave/extr_esp_slave.c_esp_slave_get_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"get_intr\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@HOST_SLC0HOST_INT_RAW_REG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@HOST_SLC0HOST_INT_ST_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_slave_get_intr(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGV(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %17, i64* %4, align 8
  br label %48

18:                                               ; preds = %13, %3
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @HOST_SLC0HOST_INT_RAW_REG, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @esp_slave_read_bytes(i32* %22, i32 %23, i32* %24, i32 4)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @ESP_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %4, align 8
  br label %48

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @HOST_SLC0HOST_INT_ST_REG, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @esp_slave_read_bytes(i32* %36, i32 %37, i32* %38, i32 4)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @ESP_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %4, align 8
  br label %48

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i64, i64* @ESP_OK, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %46, %43, %29, %16
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i32 @ESP_LOGV(i32, i8*) #1

declare dso_local i64 @esp_slave_read_bytes(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
