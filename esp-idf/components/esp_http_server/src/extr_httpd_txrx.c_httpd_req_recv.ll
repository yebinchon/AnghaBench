; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_req_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_req_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i32 }

@HTTPD_SOCK_ERR_INVALID = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid request\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"remaining length = %d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"error in httpd_recv\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"received length = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_req_recv(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
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
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @HTTPD_SOCK_ERR_INVALID, align 4
  store i32 %16, i32* %4, align 4
  br label %76

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = call i32 @httpd_valid_req(%struct.TYPE_5__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @LOG_FMT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ESP_LOGW(i32 %22, i32 %23)
  %25 = load i32, i32* @HTTPD_SOCK_ERR_INVALID, align 4
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %28, align 8
  store %struct.httpd_req_aux* %29, %struct.httpd_req_aux** %8, align 8
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 @LOG_FMT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %33 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %30, i32 %31, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %38 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %36, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %44 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %42, %26
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %76

53:                                               ; preds = %47
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @httpd_recv(%struct.TYPE_5__* %54, i8* %55, i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @TAG, align 4
  %62 = call i32 @LOG_FMT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %76

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %68 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %60, %50, %21, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @httpd_valid_req(%struct.TYPE_5__*) #1

declare dso_local i32 @ESP_LOGW(i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @httpd_recv(%struct.TYPE_5__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
