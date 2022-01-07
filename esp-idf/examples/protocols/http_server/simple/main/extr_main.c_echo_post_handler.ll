; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_echo_post_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_echo_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@HTTPD_SOCK_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"=========== RECEIVED DATA ==========\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"====================================\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @echo_post_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echo_post_handler(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %27, %24, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @MIN(i32 %16, i32 100)
  %18 = call i32 @httpd_req_recv(%struct.TYPE_5__* %14, i8* %15, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @HTTPD_SOCK_ERR_TIMEOUT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %10

25:                                               ; preds = %20
  %26 = load i32, i32* @ESP_FAIL, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %13
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @httpd_resp_send_chunk(%struct.TYPE_5__* %28, i8* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @TAG, align 4
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %40 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %39)
  %41 = load i32, i32* @TAG, align 4
  %42 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %10

43:                                               ; preds = %10
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = call i32 @httpd_resp_send_chunk(%struct.TYPE_5__* %44, i8* null, i32 0)
  %46 = load i32, i32* @ESP_OK, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %25
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @httpd_req_recv(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @httpd_resp_send_chunk(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
