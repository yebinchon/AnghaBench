; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_queue_work.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.httpd_ctrl_data = type { i8*, i32*, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@HTTPD_CTRL_WORK = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to queue work\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_queue_work(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.httpd_data*, align 8
  %9 = alloca %struct.httpd_ctrl_data, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to %struct.httpd_data*
  store %struct.httpd_data* %20, %struct.httpd_data** %8, align 8
  %21 = getelementptr inbounds %struct.httpd_ctrl_data, %struct.httpd_ctrl_data* %9, i32 0, i32 0
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.httpd_ctrl_data, %struct.httpd_ctrl_data* %9, i32 0, i32 1
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.httpd_ctrl_data, %struct.httpd_ctrl_data* %9, i32 0, i32 2
  %26 = load i32, i32* @HTTPD_CTRL_WORK, align 4
  store i32 %26, i32* %25, align 8
  %27 = load %struct.httpd_data*, %struct.httpd_data** %8, align 8
  %28 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.httpd_data*, %struct.httpd_data** %8, align 8
  %31 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cs_send_to_ctrl_sock(i32 %29, i32 %33, %struct.httpd_ctrl_data* %9, i32 24)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @ESP_LOGW(i32 %38, i32 %39)
  %41 = load i32, i32* @ESP_FAIL, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %18
  %43 = load i32, i32* @ESP_OK, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %37, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @cs_send_to_ctrl_sock(i32, i32, %struct.httpd_ctrl_data*, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
