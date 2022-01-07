; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_read_block.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"error in httpd_recv\00", align 1
@HTTPD_SOCK_ERR_TIMEOUT = common dso_local global i32 0, align 4
@HTTPD_408_REQ_TIMEOUT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@HTTPD_SOCK_ERR_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"connection closed\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"received HTTP request block size = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64)* @read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.httpd_req_aux*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %12, align 8
  store %struct.httpd_req_aux* %13, %struct.httpd_req_aux** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i64 @MIN(i64 %14, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %25 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @httpd_recv_with_opt(%struct.TYPE_5__* %23, i64 %28, i64 %29, i32 1)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %22
  %34 = load i32, i32* @TAG, align 4
  %35 = call i32 @LOG_FMT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @HTTPD_SOCK_ERR_TIMEOUT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = load i32, i32* @HTTPD_408_REQ_TIMEOUT, align 4
  %43 = call i64 @httpd_req_handle_err(%struct.TYPE_5__* %41, i32 %42)
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @HTTPD_SOCK_ERR_TIMEOUT, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @HTTPD_SOCK_ERR_FAIL, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %4, align 4
  br label %69

52:                                               ; preds = %33
  %53 = load i32, i32* @HTTPD_SOCK_ERR_FAIL, align 4
  store i32 %53, i32* %4, align 4
  br label %69

54:                                               ; preds = %22
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 @LOG_FMT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %58, i32 %59)
  %61 = load i32, i32* @HTTPD_SOCK_ERR_FAIL, align 4
  store i32 %61, i32* %4, align 4
  br label %69

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @TAG, align 4
  %65 = call i32 @LOG_FMT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %57, %52, %50, %21
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @httpd_recv_with_opt(%struct.TYPE_5__*, i64, i64, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i64 @httpd_req_handle_err(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
