; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_value/main/extr_nvs_value_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_value/main/extr_nvs_value_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i32 0, align 4
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Opening Non-Volatile Storage (NVS) handle... \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@NVS_READWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Error (%s) opening NVS handle!\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Reading restart counter from NVS ... \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"restart_counter\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Restart counter = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"The value is not initialized yet!\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Error (%s) reading!\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Updating restart counter in NVS ... \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Failed!\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Committing updates in NVS ... \00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Restarting in %d seconds...\0A\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"Restarting now.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @nvs_flash_init()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @ESP_ERR_NVS_NO_FREE_PAGES, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @ESP_ERR_NVS_NEW_VERSION_FOUND, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %0
  %14 = call i32 (...) @nvs_flash_erase()
  %15 = call i32 @ESP_ERROR_CHECK(i32 %14)
  %16 = call i32 (...) @nvs_flash_init()
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @ESP_ERROR_CHECK(i32 %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @NVS_READWRITE, align 4
  %23 = call i32 @nvs_open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32* %2)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %24, 128
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* %1, align 4
  %28 = call i8* @esp_err_to_name(i32 %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  br label %68

30:                                               ; preds = %17
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @nvs_get_i32(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %3)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  switch i32 %35, label %42 [
    i32 128, label %36
    i32 129, label %40
  ]

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %38)
  br label %46

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %46

42:                                               ; preds = %30
  %43 = load i32, i32* %1, align 4
  %44 = call i8* @esp_err_to_name(i32 %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %42, %40, %36
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @nvs_set_i32(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = icmp ne i32 %53, 128
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %57 = call i32 (i8*, ...) @printf(i8* %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @nvs_commit(i32 %59)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* %1, align 4
  %62 = icmp ne i32 %61, 128
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %65 = call i32 (i8*, ...) @printf(i8* %64)
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @nvs_close(i32 %66)
  br label %68

68:                                               ; preds = %46, %26
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 10, i32* %4, align 4
  br label %70

70:                                               ; preds = %79, %68
  %71 = load i32, i32* %4, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %77 = sdiv i32 1000, %76
  %78 = call i32 @vTaskDelay(i32 %77)
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %4, align 4
  br label %70

82:                                               ; preds = %70
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %84 = load i32, i32* @stdout, align 4
  %85 = call i32 @fflush(i32 %84)
  %86 = call i32 (...) @esp_restart()
  ret void
}

declare dso_local i32 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @nvs_flash_erase(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nvs_open(i8*, i32, i32*) #1

declare dso_local i8* @esp_err_to_name(i32) #1

declare dso_local i32 @nvs_get_i32(i32, i8*, i32*) #1

declare dso_local i32 @nvs_set_i32(i32, i8*, i32) #1

declare dso_local i32 @nvs_commit(i32) #1

declare dso_local i32 @nvs_close(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @esp_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
