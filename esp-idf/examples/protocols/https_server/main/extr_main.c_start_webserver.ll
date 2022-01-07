; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/https_server/main/extr_main.c_start_webserver.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/https_server/main/extr_main.c_start_webserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Starting server\00", align 1
@_binary_cacert_pem_start = external dso_local constant [0 x i8], align 1
@_binary_cacert_pem_end = external dso_local constant [0 x i8], align 1
@_binary_prvtkey_pem_start = external dso_local constant [0 x i8], align 1
@_binary_prvtkey_pem_end = external dso_local constant [0 x i8], align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Error starting server!\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Registering URI handlers\00", align 1
@root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @start_webserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @start_webserver() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  call void (%struct.TYPE_4__*, ...) @HTTPD_SSL_CONFIG_DEFAULT(%struct.TYPE_4__* sret %3)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_binary_cacert_pem_start, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 trunc (i64 sub (i64 ptrtoint ([0 x i8]* @_binary_cacert_pem_end to i64), i64 ptrtoint ([0 x i8]* @_binary_cacert_pem_start to i64)) to i32), i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_binary_prvtkey_pem_start, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  store i32 trunc (i64 sub (i64 ptrtoint ([0 x i8]* @_binary_prvtkey_pem_end to i64), i64 ptrtoint ([0 x i8]* @_binary_prvtkey_pem_start to i64)) to i32), i32* %10, align 8
  %11 = call i64 @httpd_ssl_start(i32** %2, %struct.TYPE_4__* %3)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @ESP_OK, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %24

18:                                               ; preds = %0
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @httpd_register_uri_handler(i32* %21, i32* @root)
  %23 = load i32*, i32** %2, align 8
  store i32* %23, i32** %1, align 8
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32*, i32** %1, align 8
  ret i32* %25
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local void @HTTPD_SSL_CONFIG_DEFAULT(%struct.TYPE_4__* sret, ...) #1

declare dso_local i64 @httpd_ssl_start(i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @httpd_register_uri_handler(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
