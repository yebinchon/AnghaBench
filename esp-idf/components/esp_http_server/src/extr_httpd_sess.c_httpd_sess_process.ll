; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_process.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { i32 }
%struct.sock_db = type { i32 }

@ESP_FAIL = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"httpd_req_new\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"httpd_req_delete\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @httpd_sess_process(%struct.httpd_data* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.httpd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock_db*, align 8
  store %struct.httpd_data* %0, %struct.httpd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.sock_db* @httpd_sess_get(%struct.httpd_data* %7, i32 %8)
  store %struct.sock_db* %9, %struct.sock_db** %6, align 8
  %10 = load %struct.sock_db*, %struct.sock_db** %6, align 8
  %11 = icmp ne %struct.sock_db* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @ESP_FAIL, align 8
  store i64 %13, i64* %3, align 8
  br label %43

14:                                               ; preds = %2
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 @LOG_FMT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @ESP_LOGD(i32 %15, i32 %16)
  %18 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %19 = load %struct.sock_db*, %struct.sock_db** %6, align 8
  %20 = call i64 @httpd_req_new(%struct.httpd_data* %18, %struct.sock_db* %19)
  %21 = load i64, i64* @ESP_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* @ESP_FAIL, align 8
  store i64 %24, i64* %3, align 8
  br label %43

25:                                               ; preds = %14
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 @LOG_FMT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @ESP_LOGD(i32 %26, i32 %27)
  %29 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %30 = call i64 @httpd_req_delete(%struct.httpd_data* %29)
  %31 = load i64, i64* @ESP_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* @ESP_FAIL, align 8
  store i64 %34, i64* %3, align 8
  br label %43

35:                                               ; preds = %25
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @LOG_FMT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @ESP_LOGD(i32 %36, i32 %37)
  %39 = call i32 (...) @httpd_sess_get_lru_counter()
  %40 = load %struct.sock_db*, %struct.sock_db** %6, align 8
  %41 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* @ESP_OK, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %35, %33, %23, %12
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local %struct.sock_db* @httpd_sess_get(%struct.httpd_data*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i64 @httpd_req_new(%struct.httpd_data*, %struct.sock_db*) #1

declare dso_local i64 @httpd_req_delete(%struct.httpd_data*) #1

declare dso_local i32 @httpd_sess_get_lru_counter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
