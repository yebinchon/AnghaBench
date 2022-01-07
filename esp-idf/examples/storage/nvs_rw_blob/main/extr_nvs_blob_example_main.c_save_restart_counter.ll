; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_blob/main/extr_nvs_blob_example_main.c_save_restart_counter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_blob/main/extr_nvs_blob_example_main.c_save_restart_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STORAGE_NAMESPACE = common dso_local global i32 0, align 4
@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"restart_conter\00", align 1
@ESP_ERR_NVS_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @save_restart_counter() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @STORAGE_NAMESPACE, align 4
  %6 = load i32, i32* @NVS_READWRITE, align 4
  %7 = call i64 @nvs_open(i32 %5, i32 %6, i32* %2)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @ESP_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %1, align 8
  br label %48

13:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @nvs_get_i32(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %4)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @ESP_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @ESP_ERR_NVS_NOT_FOUND, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* %1, align 8
  br label %48

25:                                               ; preds = %19, %13
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %4, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @nvs_set_i32(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* %3, align 8
  store i64 %35, i64* %1, align 8
  br label %48

36:                                               ; preds = %25
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @nvs_commit(i32 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %3, align 8
  store i64 %43, i64* %1, align 8
  br label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @nvs_close(i32 %45)
  %47 = load i64, i64* @ESP_OK, align 8
  store i64 %47, i64* %1, align 8
  br label %48

48:                                               ; preds = %44, %42, %34, %23, %11
  %49 = load i64, i64* %1, align 8
  ret i64 %49
}

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i64 @nvs_get_i32(i32, i8*, i64*) #1

declare dso_local i64 @nvs_set_i32(i32, i8*, i64) #1

declare dso_local i64 @nvs_commit(i32) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
