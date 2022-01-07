; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_start_webserver.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_start_webserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Starting server on port: '%d'\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Registering URI handlers\00", align 1
@hello = common dso_local global i32 0, align 4
@echo = common dso_local global i32 0, align 4
@ctrl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Error starting server!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @start_webserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @start_webserver() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  store i32* null, i32** %2, align 8
  %4 = call i32 (...) @HTTPD_DEFAULT_CONFIG()
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @TAG, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i64 @httpd_start(i32** %2, %struct.TYPE_4__* %3)
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %0
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @httpd_register_uri_handler(i32* %16, i32* @hello)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @httpd_register_uri_handler(i32* %18, i32* @echo)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @httpd_register_uri_handler(i32* %20, i32* @ctrl)
  %22 = load i32*, i32** %2, align 8
  store i32* %22, i32** %1, align 8
  br label %26

23:                                               ; preds = %0
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %26

26:                                               ; preds = %23, %13
  %27 = load i32*, i32** %1, align 8
  ret i32* %27
}

declare dso_local i32 @HTTPD_DEFAULT_CONFIG(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @httpd_start(i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @httpd_register_uri_handler(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
