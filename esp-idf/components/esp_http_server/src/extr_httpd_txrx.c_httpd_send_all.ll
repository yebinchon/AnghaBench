; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_send_all.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_send_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i8*, i64, i32)*, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"error in send_fn\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sent = %d\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @httpd_send_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @httpd_send_all(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.httpd_req_aux*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %11, align 8
  store %struct.httpd_req_aux* %12, %struct.httpd_req_aux** %8, align 8
  br label %13

13:                                               ; preds = %42, %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %18 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, i8*, i64, i32)*, i32 (i32, i32, i8*, i64, i32)** %20, align 8
  %22 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %23 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %28 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 %21(i32 %26, i32 %31, i8* %32, i64 %33, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %16
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 @LOG_FMT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %38, i32 %39)
  %41 = load i32, i32* @ESP_FAIL, align 4
  store i32 %41, i32* %4, align 4
  br label %57

42:                                               ; preds = %16
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 @LOG_FMT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %13

55:                                               ; preds = %13
  %56 = load i32, i32* @ESP_OK, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %37
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
