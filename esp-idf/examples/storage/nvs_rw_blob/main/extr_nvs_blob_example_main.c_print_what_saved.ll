; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_blob/main/extr_nvs_blob_example_main.c_print_what_saved.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_blob/main/extr_nvs_blob_example_main.c_print_what_saved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STORAGE_NAMESPACE = common dso_local global i32 0, align 4
@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"restart_conter\00", align 1
@ESP_ERR_NVS_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Restart counter = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"run_time\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Run time:\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Nothing saved yet!\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @print_what_saved() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @STORAGE_NAMESPACE, align 4
  %9 = load i32, i32* @NVS_READWRITE, align 4
  %10 = call i64 @nvs_open(i32 %8, i32 %9, i32* %2)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @ESP_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i64, i64* %3, align 8
  store i64 %15, i64* %1, align 8
  br label %87

16:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @nvs_get_i32(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ESP_ERR_NVS_NOT_FOUND, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  store i64 %27, i64* %1, align 8
  br label %87

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i64 0, i64* %5, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @nvs_get_blob(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i64* %5)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @ESP_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @ESP_ERR_NVS_NOT_FOUND, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  store i64 %41, i64* %1, align 8
  br label %87

42:                                               ; preds = %36, %28
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %83

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = call i32* @malloc(i64 %49)
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* %2, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @nvs_get_blob(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %52, i64* %5)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @free(i32* %58)
  %60 = load i64, i64* %3, align 8
  store i64 %60, i64* %1, align 8
  br label %87

61:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %5, align 8
  %66 = udiv i64 %65, 4
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @free(i32* %81)
  br label %83

83:                                               ; preds = %80, %46
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @nvs_close(i32 %84)
  %86 = load i64, i64* @ESP_OK, align 8
  store i64 %86, i64* %1, align 8
  br label %87

87:                                               ; preds = %83, %57, %40, %26, %14
  %88 = load i64, i64* %1, align 8
  ret i64 %88
}

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i64 @nvs_get_i32(i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @nvs_get_blob(i32, i8*, i32*, i64*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
