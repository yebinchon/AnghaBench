; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_test_httpd_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_test_httpd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@pre_start_mem = common dso_local global i32 0, align 4
@CONFIG_LWIP_MAX_SOCKETS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Started HTTP server on port: '%d'\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Max URI handlers: '%d'\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Max Open Sessions: '%d'\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Max Header Length: '%d'\00", align 1
@HTTPD_MAX_REQ_HDR_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Max URI Length: '%d'\00", align 1
@HTTPD_MAX_URI_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Max Stack Size: '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @test_httpd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @test_httpd_start() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = call i32 (...) @esp_get_free_heap_size()
  store i32 %4, i32* @pre_start_mem, align 4
  %5 = call { i64, i64 } (...) @HTTPD_DEFAULT_CONFIG()
  %6 = bitcast %struct.TYPE_4__* %3 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %8 = extractvalue { i64, i64 } %5, 0
  store i64 %8, i64* %7, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %10 = extractvalue { i64, i64 } %5, 1
  store i64 %10, i64* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 1234, i32* %12, align 4
  %13 = load i32, i32* @CONFIG_LWIP_MAX_SOCKETS, align 4
  %14 = sub nsw i32 %13, 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = call i64 @httpd_start(i32** %2, %struct.TYPE_4__* %3)
  %17 = load i64, i64* @ESP_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %0
  %20 = load i32, i32* @TAG, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ESP_LOGI(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @TAG, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @TAG, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @TAG, align 4
  %33 = load i32, i32* @HTTPD_MAX_REQ_HDR_LEN, align 4
  %34 = call i32 @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @TAG, align 4
  %36 = load i32, i32* @HTTPD_MAX_URI_LEN, align 4
  %37 = call i32 @ESP_LOGI(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @TAG, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %2, align 8
  store i32* %42, i32** %1, align 8
  br label %44

43:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32*, i32** %1, align 8
  ret i32* %45
}

declare dso_local i32 @esp_get_free_heap_size(...) #1

declare dso_local { i64, i64 } @HTTPD_DEFAULT_CONFIG(...) #1

declare dso_local i64 @httpd_start(i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
