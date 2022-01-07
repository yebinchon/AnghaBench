; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_leftover_data_post_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_leftover_data_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTPD_SOCK_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"leftover data handler read %s\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @leftover_data_post_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leftover_data_post_handler(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [11 x i8], align 1
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %8 = call i32 @httpd_req_recv(i32* %6, i8* %7, i32 10)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @HTTPD_SOCK_ERR_TIMEOUT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @httpd_resp_send_408(i32* %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, i32* @ESP_FAIL, align 4
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 %22
  store i8 0, i8* %23, align 1
  %24 = load i32, i32* @TAG, align 4
  %25 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %26 = call i32 @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %29 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @httpd_resp_send(i32* %27, i8* %28, i32 %30)
  %32 = load i32, i32* @ESP_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %20, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @httpd_req_recv(i32*, i8*, i32) #1

declare dso_local i32 @httpd_resp_send_408(i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*) #1

declare dso_local i32 @httpd_resp_send(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
