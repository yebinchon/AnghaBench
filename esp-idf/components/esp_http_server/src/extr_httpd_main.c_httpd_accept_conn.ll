; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_accept_conn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_accept_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.timeval = type { i64, i32 }
%struct.sockaddr = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error in accept (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"newfd = %d\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"session creation failed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.httpd_data*, i32)* @httpd_accept_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @httpd_accept_conn(%struct.httpd_data* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.httpd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  store %struct.httpd_data* %0, %struct.httpd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %11 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %17 = call i32 @httpd_is_sess_available(%struct.httpd_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %21 = call i64 @httpd_sess_close_lru(%struct.httpd_data* %20)
  store i64 %21, i64* %3, align 8
  br label %79

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %2
  store i32 4, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %26 = call i32 @accept(i32 %24, %struct.sockaddr* %25, i32* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %30, i32 %31, i32 %32)
  %34 = load i64, i64* @ESP_FAIL, align 8
  store i64 %34, i64* %3, align 8
  br label %79

35:                                               ; preds = %23
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @LOG_FMT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %41 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SOL_SOCKET, align 4
  %48 = load i32, i32* @SO_RCVTIMEO, align 4
  %49 = bitcast %struct.timeval* %9 to i8*
  %50 = call i32 @setsockopt(i32 %46, i32 %47, i32 %48, i8* %49, i32 16)
  %51 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %52 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SOL_SOCKET, align 4
  %59 = load i32, i32* @SO_SNDTIMEO, align 4
  %60 = bitcast %struct.timeval* %9 to i8*
  %61 = call i32 @setsockopt(i32 %57, i32 %58, i32 %59, i8* %60, i32 16)
  %62 = load i64, i64* @ESP_OK, align 8
  %63 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @httpd_sess_new(%struct.httpd_data* %63, i32 %64)
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %35
  %68 = load i32, i32* @TAG, align 4
  %69 = call i32 @LOG_FMT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @close(i32 %71)
  %73 = load i64, i64* @ESP_FAIL, align 8
  store i64 %73, i64* %3, align 8
  br label %79

74:                                               ; preds = %35
  %75 = load i32, i32* @TAG, align 4
  %76 = call i32 @LOG_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %75, i32 %76)
  %78 = load i64, i64* @ESP_OK, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %74, %67, %29, %19
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i32 @httpd_is_sess_available(%struct.httpd_data*) #1

declare dso_local i64 @httpd_sess_close_lru(%struct.httpd_data*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @httpd_sess_new(%struct.httpd_data*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
