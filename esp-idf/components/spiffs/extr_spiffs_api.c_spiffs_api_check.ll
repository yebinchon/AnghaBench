; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/extr_spiffs_api.c_spiffs_api_check.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/extr_spiffs_api.c_spiffs_api_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spiffs_api_check.spiffs_check_type_str = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"LOOKUP\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"INDEX\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PAGE\00", align 1
@spiffs_api_check.spiffs_check_report_str = internal global [7 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"PROGRESS\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"FIX INDEX\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"FIX LOOKUP\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"DELETE ORPHANED INDEX\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"DELETE PAGE\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"DELETE BAD FILE\00", align 1
@SPIFFS_CHECK_PROGRESS = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"CHECK: type:%s, report:%s, %x:%x\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"CHECK PROGRESS: report:%s, %x:%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spiffs_api_check(i32* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @SPIFFS_CHECK_PROGRESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %5
  %15 = load i32, i32* @TAG, align 4
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds [3 x i8*], [3 x i8*]* @spiffs_api_check.spiffs_check_type_str, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* @spiffs_api_check.spiffs_check_report_str, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @ESP_LOGE(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %18, i8* %21, i32 %22, i32 %23)
  br label %33

25:                                               ; preds = %5
  %26 = load i32, i32* @TAG, align 4
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* @spiffs_api_check.spiffs_check_report_str, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ESP_LOGV(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
