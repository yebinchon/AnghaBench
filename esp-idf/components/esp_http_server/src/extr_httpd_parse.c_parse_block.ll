; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_parse_block.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_parse_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"request URI/header too long\00", align 1
@HTTPD_414_URI_TOO_LONG = common dso_local global i32 0, align 4
@HTTPD_431_REQ_HDR_FIELDS_TOO_LARGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"unexpected state\00", align 1
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@PARSING_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"parsing failed\00", align 1
@HTTPD_400_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"incomplete (%d/%d) with parser error = %d\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"parsed block size = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i64)* @parse_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_block(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.httpd_req_aux*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %20, align 8
  store %struct.httpd_req_aux* %21, %struct.httpd_req_aux** %10, align 8
  store i64 0, i64* %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 @LOG_FMT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %39 [
    i32 128, label %31
    i32 130, label %35
    i32 129, label %35
  ]

31:                                               ; preds = %24
  %32 = load i32, i32* @HTTPD_414_URI_TOO_LONG, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %46

35:                                               ; preds = %24, %24
  %36 = load i32, i32* @HTTPD_431_REQ_HDR_FIELDS_TOO_LARGE, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %46

39:                                               ; preds = %24
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @LOG_FMT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @ESP_LOGE(i32 %40, i32 %41)
  %43 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %35, %31
  %47 = load i8*, i8** @PARSING_FAILED, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  store i32 -1, i32* %4, align 4
  br label %142

51:                                               ; preds = %3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @continue_parsing(%struct.TYPE_9__* %57, i64 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i64, i64* %11, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %142

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %51
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %10, align 8
  %77 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @http_parser_execute(%struct.TYPE_9__* %73, i32* %75, i64 %80, i64 %81)
  store i64 %82, i64* %11, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8*, i8** @PARSING_FAILED, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %72
  %91 = load i32, i32* @TAG, align 4
  %92 = call i32 @LOG_FMT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %91, i32 %92)
  store i32 -1, i32* %4, align 4
  br label %142

94:                                               ; preds = %72
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub i64 %100, %101
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = sub i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 8
  store i32 0, i32* %4, align 4
  br label %142

109:                                              ; preds = %94
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i8*, i8** @PARSING_FAILED, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @TAG, align 4
  %122 = call i32 @LOG_FMT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %121, i32 %122, i64 %123, i64 %124, i32 %127)
  store i32 -1, i32* %4, align 4
  br label %142

129:                                              ; preds = %109
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* @TAG, align 4
  %133 = call i32 @LOG_FMT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %134, %135
  %137 = call i32 @ESP_LOGD(i32 %132, i32 %133, i64 %136)
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %131, %113, %99, %90, %68, %46
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @ESP_LOGW(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i32) #1

declare dso_local i64 @continue_parsing(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @http_parser_execute(%struct.TYPE_9__*, i32*, i64, i64) #1

declare dso_local i32 @ESP_LOGD(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
