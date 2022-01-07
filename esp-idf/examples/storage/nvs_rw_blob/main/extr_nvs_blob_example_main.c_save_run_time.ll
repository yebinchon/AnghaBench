; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_blob/main/extr_nvs_blob_example_main.c_save_run_time.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_blob/main/extr_nvs_blob_example_main.c_save_run_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STORAGE_NAMESPACE = common dso_local global i32 0, align 4
@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"run_time\00", align 1
@ESP_ERR_NVS_NOT_FOUND = common dso_local global i64 0, align 8
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @save_run_time() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @STORAGE_NAMESPACE, align 4
  %7 = load i32, i32* @NVS_READWRITE, align 4
  %8 = call i64 @nvs_open(i32 %6, i32 %7, i32* %2)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ESP_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* %1, align 8
  br label %78

14:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @nvs_get_blob(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i64* %4)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @ESP_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ESP_ERR_NVS_NOT_FOUND, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  store i64 %25, i64* %1, align 8
  br label %78

26:                                               ; preds = %20, %14
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 4
  %29 = call i32* @malloc(i64 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @nvs_get_blob(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %34, i64* %4)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @ESP_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load i64, i64* %3, align 8
  store i64 %42, i64* %1, align 8
  br label %78

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %4, align 8
  %47 = call i32 (...) @xTaskGetTickCount()
  %48 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = udiv i64 %51, 4
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @nvs_set_blob(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %56, i64 %57)
  store i64 %58, i64* %3, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @free(i32* %59)
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @ESP_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i64, i64* %3, align 8
  store i64 %65, i64* %1, align 8
  br label %78

66:                                               ; preds = %44
  %67 = load i32, i32* %2, align 4
  %68 = call i64 @nvs_commit(i32 %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @ESP_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* %3, align 8
  store i64 %73, i64* %1, align 8
  br label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @nvs_close(i32 %75)
  %77 = load i64, i64* @ESP_OK, align 8
  store i64 %77, i64* %1, align 8
  br label %78

78:                                               ; preds = %74, %72, %64, %39, %24, %12
  %79 = load i64, i64* %1, align 8
  ret i64 %79
}

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i64 @nvs_get_blob(i32, i8*, i32*, i64*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @xTaskGetTickCount(...) #1

declare dso_local i64 @nvs_set_blob(i32, i8*, i32*, i64) #1

declare dso_local i64 @nvs_commit(i32) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
