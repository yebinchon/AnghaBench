; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_delete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i64 }

@CONFIG_HTTPD_PURGE_BUF_LEN = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"purging data size : %d bytes\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@ESP_LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_req_delete(%struct.httpd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.httpd_data*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.httpd_req_aux*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %3, align 8
  %10 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %11 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %10, i32 0, i32 0
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %13, align 8
  store %struct.httpd_req_aux* %14, %struct.httpd_req_aux** %5, align 8
  br label %15

15:                                               ; preds = %49, %1
  %16 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %5, align 8
  %17 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load i32, i32* @CONFIG_HTTPD_PURGE_BUF_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = trunc i64 %22 to i32
  %26 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %5, align 8
  %27 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @MIN(i32 %25, i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @httpd_req_recv(%struct.TYPE_4__* %30, i8* %24, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = call i32 @httpd_req_cleanup(%struct.TYPE_4__* %36)
  %38 = load i32, i32* @ESP_FAIL, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %46

39:                                               ; preds = %20
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @LOG_FMT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %40, i8* %43, i32 %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %56 [
    i32 0, label %49
    i32 1, label %54
  ]

49:                                               ; preds = %46
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = call i32 @httpd_req_cleanup(%struct.TYPE_4__* %51)
  %53 = load i32, i32* @ESP_OK, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %2, align 4
  ret i32 %55

56:                                               ; preds = %46
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MIN(i32, i64) #2

declare dso_local i32 @httpd_req_recv(%struct.TYPE_4__*, i8*, i32) #2

declare dso_local i32 @httpd_req_cleanup(%struct.TYPE_4__*) #2

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #2

declare dso_local i32 @LOG_FMT(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
