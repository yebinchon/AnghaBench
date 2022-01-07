; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_resp_send_err.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_resp_send_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"501 Method Not Implemented\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Request method is not supported by server\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"505 Version Not Supported\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"HTTP version not supported by server\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"400 Bad Request\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Server unable to understand request due to invalid syntax\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"404 Not Found\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"This URI does not exist\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"405 Method Not Allowed\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Request method for this URI is not handled by server\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"408 Request Timeout\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Server closed this connection\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"414 URI Too Long\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"URI is too long for server to interpret\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"411 Length Required\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Chunked encoding not supported by server\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"431 Request Header Fields Too Large\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"Header fields are too long for server to interpret\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"500 Internal Server Error\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Server has encountered an unexpected error\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@HTTPD_TYPE_TEXT = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_resp_send_err(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 128, label %12
    i32 137, label %13
    i32 136, label %14
    i32 135, label %15
    i32 134, label %16
    i32 132, label %17
    i32 133, label %18
    i32 131, label %19
    i32 130, label %20
  ]

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %22

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %22

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %22

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %22

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %22

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %22

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %22

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %22

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i8** %8, align 8
  br label %22

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %3, %20
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i8** %8, align 8
  br label %22

22:                                               ; preds = %21, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  br label %29

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i8* [ %26, %25 ], [ %28, %27 ]
  store i8* %30, i8** %8, align 8
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @LOG_FMT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 (i32, i32, i8*, ...) @ESP_LOGW(i32 %31, i32 %32, i8* %33, i8* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @httpd_resp_set_status(%struct.TYPE_8__* %36, i8* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32, i32* @HTTPD_TYPE_TEXT, align 4
  %41 = call i32 @httpd_resp_set_type(%struct.TYPE_8__* %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 @httpd_resp_send(%struct.TYPE_8__* %42, i8* %43, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @ESP_LOGW(i32, i32, i8*, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @httpd_resp_set_status(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @httpd_resp_set_type(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @httpd_resp_send(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
