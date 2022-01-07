; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_resp_set_hdr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_resp_set_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.httpd_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_INVALID_REQ = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_RESP_HDR = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"new header = %s: %s\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_resp_set_hdr(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.httpd_req_aux*, align 8
  %9 = alloca %struct.httpd_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %3
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %19, i32* %4, align 4
  br label %73

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = call i32 @httpd_valid_req(%struct.TYPE_8__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ESP_ERR_HTTPD_INVALID_REQ, align 4
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %28, align 8
  store %struct.httpd_req_aux* %29, %struct.httpd_req_aux** %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.httpd_data*
  store %struct.httpd_data* %33, %struct.httpd_data** %9, align 8
  %34 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %35 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.httpd_data*, %struct.httpd_data** %9, align 8
  %38 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %36, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @ESP_ERR_HTTPD_RESP_HDR, align 4
  store i32 %43, i32* %4, align 4
  br label %73

44:                                               ; preds = %26
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %47 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %50 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i8* %45, i8** %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %56 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %59 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i8* %54, i8** %62, align 8
  %63 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %64 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* @TAG, align 4
  %68 = call i32 @LOG_FMT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @ESP_LOGD(i32 %67, i32 %68, i8* %69, i8* %70)
  %72 = load i32, i32* @ESP_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %44, %42, %24, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @httpd_valid_req(%struct.TYPE_8__*) #1

declare dso_local i32 @ESP_LOGD(i32, i32, i8*, i8*) #1

declare dso_local i32 @LOG_FMT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
