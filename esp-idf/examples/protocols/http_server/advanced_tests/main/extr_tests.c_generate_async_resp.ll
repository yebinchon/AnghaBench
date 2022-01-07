; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_generate_async_resp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_generate_async_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_resp_arg = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Executing queued work fd : %d\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Type: text/html\0D\0AContent-Length: %d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Hello Double World!\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@HTTPD_HDR_STR = common dso_local global i8* null, align 8
@STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @generate_async_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_async_resp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [250 x i8], align 16
  %4 = alloca %struct.async_resp_arg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.async_resp_arg*
  store %struct.async_resp_arg* %8, %struct.async_resp_arg** %4, align 8
  %9 = load %struct.async_resp_arg*, %struct.async_resp_arg** %4, align 8
  %10 = getelementptr inbounds %struct.async_resp_arg, %struct.async_resp_arg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.async_resp_arg*, %struct.async_resp_arg** %4, align 8
  %13 = getelementptr inbounds %struct.async_resp_arg, %struct.async_resp_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @TAG, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ESP_LOGI(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %19 = call i32 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @snprintf(i8* %18, i32 250, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %24 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %25 = call i32 @strlen(i8* %24)
  %26 = call i32 @httpd_default_send(i32 %21, i32 %22, i8* %23, i32 %25, i32 0)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @httpd_default_send(i32 %27, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @httpd_default_send(i32 %31, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 0)
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @free(i8* %35)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @httpd_default_send(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
