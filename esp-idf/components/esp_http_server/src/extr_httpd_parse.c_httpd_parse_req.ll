; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_parse_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_parse_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@PARSER_BLOCK_SIZE = common dso_local global i32 0, align 4
@HTTPD_SOCK_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@PARSING_COMPLETE = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"parsing complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.httpd_data*)* @httpd_parse_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @httpd_parse_req(%struct.httpd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.httpd_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store %struct.httpd_data* %0, %struct.httpd_data** %3, align 8
  %9 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %10 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %9, i32 0, i32 0
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @parse_init(i32* %11, i32* %7, %struct.TYPE_3__* %8)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PARSER_BLOCK_SIZE, align 4
  %17 = call i32 @read_block(i32* %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @HTTPD_SOCK_ERR_TIMEOUT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %41

24:                                               ; preds = %19
  %25 = load i32, i32* @ESP_FAIL, align 4
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @parse_block(i32* %7, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @httpd_req_handle_err(i32* %36, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %52

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %23
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PARSING_COMPLETE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %13, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @TAG, align 4
  %48 = call i32 @LOG_FMT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @ESP_LOGD(i32 %47, i32 %48)
  %50 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %51 = call i32 @httpd_uri(%struct.httpd_data* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %35, %24
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @parse_init(i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @read_block(i32*, i32, i32) #1

declare dso_local i32 @parse_block(i32*, i32, i32) #1

declare dso_local i32 @httpd_req_handle_err(i32*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @httpd_uri(%struct.httpd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
