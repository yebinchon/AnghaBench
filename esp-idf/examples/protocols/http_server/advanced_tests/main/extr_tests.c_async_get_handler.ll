; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_async_get_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_async_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.async_resp_arg = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Queuing work fd : %d\00", align 1
@generate_async_resp = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @async_get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_get_handler(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.async_resp_arg*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @strlen(i32 ptrtoint ([13 x i8]* @.str to i32))
  %7 = call i32 @httpd_resp_send(%struct.TYPE_5__* %5, i32 ptrtoint ([13 x i8]* @.str to i32), i32 %6)
  %8 = call %struct.async_resp_arg* @malloc(i32 16)
  store %struct.async_resp_arg* %8, %struct.async_resp_arg** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.async_resp_arg*, %struct.async_resp_arg** %4, align 8
  %13 = getelementptr inbounds %struct.async_resp_arg, %struct.async_resp_arg* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = call i64 @httpd_req_to_sockfd(%struct.TYPE_5__* %14)
  %16 = load %struct.async_resp_arg*, %struct.async_resp_arg** %4, align 8
  %17 = getelementptr inbounds %struct.async_resp_arg, %struct.async_resp_arg* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.async_resp_arg*, %struct.async_resp_arg** %4, align 8
  %19 = getelementptr inbounds %struct.async_resp_arg, %struct.async_resp_arg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ESP_FAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load i32, i32* @TAG, align 4
  %26 = load %struct.async_resp_arg*, %struct.async_resp_arg** %4, align 8
  %27 = getelementptr inbounds %struct.async_resp_arg, %struct.async_resp_arg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @generate_async_resp, align 4
  %34 = load %struct.async_resp_arg*, %struct.async_resp_arg** %4, align 8
  %35 = call i32 @httpd_queue_work(i32 %32, i32 %33, %struct.async_resp_arg* %34)
  %36 = load i32, i32* @ESP_OK, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %24, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @httpd_resp_send(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.async_resp_arg* @malloc(i32) #1

declare dso_local i64 @httpd_req_to_sockfd(%struct.TYPE_5__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i64) #1

declare dso_local i32 @httpd_queue_work(i32, i32, %struct.async_resp_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
