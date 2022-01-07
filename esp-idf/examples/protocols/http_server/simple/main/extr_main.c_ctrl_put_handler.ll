; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_ctrl_put_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_ctrl_put_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@HTTPD_SOCK_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unregistering /hello and /echo URIs\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/hello\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/echo\00", align 1
@HTTPD_404_NOT_FOUND = common dso_local global i32 0, align 4
@http_404_error_handler = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Registering /hello and /echo URIs\00", align 1
@hello = common dso_local global i32 0, align 4
@echo = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ctrl_put_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_put_handler(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i32 @httpd_req_recv(%struct.TYPE_6__* %6, i8* %4, i32 1)
  store i32 %7, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HTTPD_SOCK_ERR_TIMEOUT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @httpd_resp_send_408(%struct.TYPE_6__* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* @ESP_FAIL, align 4
  store i32 %17, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 48
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @httpd_unregister_uri(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @httpd_unregister_uri(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HTTPD_404_NOT_FOUND, align 4
  %37 = load i32*, i32** @http_404_error_handler, align 8
  %38 = call i32 @httpd_register_err_handler(i32 %35, i32 %36, i32* %37)
  br label %55

39:                                               ; preds = %18
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @ESP_LOGI(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @httpd_register_uri_handler(i32 %44, i32* @hello)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @httpd_register_uri_handler(i32 %48, i32* @echo)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HTTPD_404_NOT_FOUND, align 4
  %54 = call i32 @httpd_register_err_handler(i32 %52, i32 %53, i32* null)
  br label %55

55:                                               ; preds = %39, %22
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call i32 @httpd_resp_send(%struct.TYPE_6__* %56, i32* null, i32 0)
  %58 = load i32, i32* @ESP_OK, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @httpd_req_recv(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @httpd_resp_send_408(%struct.TYPE_6__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @httpd_unregister_uri(i32, i8*) #1

declare dso_local i32 @httpd_register_err_handler(i32, i32, i32*) #1

declare dso_local i32 @httpd_register_uri_handler(i32, i32*) #1

declare dso_local i32 @httpd_resp_send(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
