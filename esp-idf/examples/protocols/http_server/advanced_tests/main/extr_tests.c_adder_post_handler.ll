; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_adder_post_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_adder_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@HTTPD_SOCK_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"/adder handler read %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"/adder allocating new session\00", align 1
@adder_free_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @adder_post_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adder_post_handler(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca [50 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %11 = call i32 @httpd_req_recv(%struct.TYPE_6__* %9, i8* %10, i32 10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HTTPD_SOCK_ERR_TIMEOUT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i32 @httpd_resp_send_408(%struct.TYPE_6__* %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* @ESP_FAIL, align 4
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %28 = call i32 @atoi(i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @TAG, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i64 @malloc(i32 4)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @adder_free_func, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %36, %23
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snprintf(i8* %58, i32 50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %65 = call i32 @strlen(i8* %64)
  %66 = call i32 @httpd_resp_send(%struct.TYPE_6__* %62, i8* %63, i32 %65)
  %67 = load i32, i32* @ESP_OK, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %49, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @httpd_req_recv(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @httpd_resp_send_408(%struct.TYPE_6__*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @httpd_resp_send(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
