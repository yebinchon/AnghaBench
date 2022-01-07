; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_recv_with_opt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_recv_with_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 (i32, i32, i8*, i64, i32)*, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"requested length = %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"pending length = %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"error in recv_fn\00", align 1
@HTTPD_SOCK_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"received length = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_recv_with_opt(%struct.TYPE_6__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.httpd_req_aux*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @TAG, align 4
  %14 = call i32 @LOG_FMT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %8, align 8
  %16 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %13, i32 %14, i64 %15)
  store i64 0, i64* %10, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %18, align 8
  store %struct.httpd_req_aux* %19, %struct.httpd_req_aux** %11, align 8
  %20 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %11, align 8
  %21 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %4
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @LOG_FMT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %11, align 8
  %30 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %27, i32 %28, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @httpd_recv_pending(%struct.TYPE_6__* %35, i8* %36, i64 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %41, i8** %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %26
  %51 = load i64, i64* %10, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %103

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %4
  %55 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %11, align 8
  %56 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32 (i32, i32, i8*, i64, i32)*, i32 (i32, i32, i8*, i64, i32)** %58, align 8
  %60 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %11, align 8
  %61 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %11, align 8
  %66 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 %59(i32 %64, i32 %69, i8* %70, i64 %71, i32 0)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %54
  %76 = load i32, i32* @TAG, align 4
  %77 = call i32 @LOG_FMT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %76, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @HTTPD_SOCK_ERR_TIMEOUT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* %10, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %103

88:                                               ; preds = %82, %75
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %5, align 4
  br label %103

90:                                               ; preds = %54
  %91 = load i32, i32* @TAG, align 4
  %92 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %94, %95
  %97 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %91, i32 %92, i64 %96)
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %90, %88, %85, %50
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i64 @httpd_recv_pending(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
