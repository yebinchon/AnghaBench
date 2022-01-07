; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_httpd.c_protocomm_httpd_remove_endpoint.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_httpd.c_protocomm_httpd_remove_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@pc_httpd = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Removing endpoint : %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Malloc failed for ep uri\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@HTTP_POST = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Uri handler de-register failed: %s\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @protocomm_httpd_remove_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protocomm_httpd_remove_endpoint(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pc_httpd, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @ESP_LOGD(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = add nsw i64 %16, 2
  %18 = call i8* @calloc(i32 1, i64 %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %11
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pc_httpd, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @HTTP_POST, align 4
  %37 = call i32 @httpd_unregister_uri_handler(i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @ESP_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %25
  %41 = load i32, i32* @TAG, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @esp_err_to_name(i32 %42)
  %44 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* @ESP_FAIL, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %25
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* @ESP_OK, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %40, %21, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @httpd_unregister_uri_handler(i32, i8*, i32) #1

declare dso_local i32 @esp_err_to_name(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
