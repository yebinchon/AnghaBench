; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_cb_headers_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_cb_headers_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i32, i8*, %struct.TYPE_6__, %struct.httpd_req* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.httpd_req = type { i64, %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i8*, i64, i32 }

@PARSING_URL = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no headers\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@PARSING_FAILED = common dso_local global i8* null, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@PARSING_HDR_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid length of data remaining to be parsed\00", align 1
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"incomplete termination of headers\00", align 1
@HTTPD_400_BAD_REQUEST = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"unexpected state transition\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bytes read     = %d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"content length = %zu\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"upgrade from HTTP not supported\00", align 1
@PARSING_BODY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @cb_headers_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cb_headers_complete(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.httpd_req*, align 8
  %6 = alloca %struct.httpd_req_aux*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = load %struct.httpd_req*, %struct.httpd_req** %15, align 8
  store %struct.httpd_req* %16, %struct.httpd_req** %5, align 8
  %17 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %18 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %17, i32 0, i32 1
  %19 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %18, align 8
  store %struct.httpd_req_aux* %19, %struct.httpd_req_aux** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PARSING_URL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 @LOG_FMT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i64 @verify_url(%struct.TYPE_8__* %29)
  %31 = load i64, i64* @ESP_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i8*, i8** @PARSING_FAILED, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* @ESP_FAIL, align 8
  store i64 %38, i64* %2, align 8
  br label %196

39:                                               ; preds = %25
  br label %143

40:                                               ; preds = %1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PARSING_HDR_VALUE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %130

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8* %56, i8** %7, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %63 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %61 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sub nsw i64 %60, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %84

72:                                               ; preds = %46
  %73 = load i32, i32* @TAG, align 4
  %74 = call i32 @LOG_FMT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i32 @ESP_LOGE(i32 %73, i32 %74)
  %76 = load i8*, i8** @HTTPD_500_INTERNAL_SERVER_ERROR, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @PARSING_FAILED, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* @ESP_FAIL, align 8
  store i64 %83, i64* %2, align 8
  br label %196

84:                                               ; preds = %46
  store i16 2, i16* %9, align 2
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i16, i16* %9, align 2
  %91 = zext i16 %90 to i32
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ false, %85 ], [ %92, %89 ]
  br i1 %94, label %95, label %106

95:                                               ; preds = %93
  %96 = load i8*, i8** %7, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i16, i16* %9, align 2
  %102 = add i16 %101, -1
  store i16 %102, i16* %9, align 2
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  store i8 0, i8* %104, align 1
  br label %85

106:                                              ; preds = %93
  %107 = load i16, i16* %9, align 2
  %108 = icmp ne i16 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32, i32* @TAG, align 4
  %111 = call i32 @LOG_FMT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %112 = call i32 @ESP_LOGE(i32 %110, i32 %111)
  %113 = load i8*, i8** @HTTPD_400_BAD_REQUEST, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @PARSING_FAILED, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* @ESP_FAIL, align 8
  store i64 %120, i64* %2, align 8
  br label %196

121:                                              ; preds = %106
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %127 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %142

130:                                              ; preds = %40
  %131 = load i32, i32* @TAG, align 4
  %132 = call i32 @LOG_FMT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %133 = call i32 @ESP_LOGE(i32 %131, i32 %132)
  %134 = load i8*, i8** @HTTPD_500_INTERNAL_SERVER_ERROR, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @PARSING_FAILED, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* @ESP_FAIL, align 8
  store i64 %141, i64* %2, align 8
  br label %196

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %39
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  br label %154

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %149
  %155 = phi i64 [ %152, %149 ], [ 0, %153 ]
  %156 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %157 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load i32, i32* @TAG, align 4
  %159 = call i32 @LOG_FMT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %158, i32 %159, i64 %162)
  %164 = load i32, i32* @TAG, align 4
  %165 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %166 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %167 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %164, i32 %165, i64 %168)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %154
  %175 = load i32, i32* @TAG, align 4
  %176 = call i32 @LOG_FMT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %177 = call i32 @ESP_LOGW(i32 %175, i32 %176)
  %178 = load i8*, i8** @HTTPD_400_BAD_REQUEST, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** @PARSING_FAILED, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load i64, i64* @ESP_FAIL, align 8
  store i64 %185, i64* %2, align 8
  br label %196

186:                                              ; preds = %154
  %187 = load i64, i64* @PARSING_BODY, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %191 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %194 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* @ESP_OK, align 8
  store i64 %195, i64* %2, align 8
  br label %196

196:                                              ; preds = %186, %174, %130, %109, %72, %33
  %197 = load i64, i64* %2, align 8
  ret i64 %197
}

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i64 @verify_url(%struct.TYPE_8__*) #1

declare dso_local i32 @ESP_LOGE(i32, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
