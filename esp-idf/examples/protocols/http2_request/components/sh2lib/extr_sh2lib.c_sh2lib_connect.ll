; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_sh2lib_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_sh2lib_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh2lib_handle = type { i32, i32* }
%struct.TYPE_5__ = type { i8**, i32 }
%struct.http_parser_url = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"h2\00", align 1
@__const.sh2lib_connect.proto = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"[sh2-connect] esp-tls connection failed\00", align 1
@UF_HOST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"[sh2-connect] HTTP2 Connection failed with %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh2lib_connect(%struct.sh2lib_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh2lib_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.http_parser_url, align 8
  store %struct.sh2lib_handle* %0, %struct.sh2lib_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %4, align 8
  %10 = call i32 @memset(%struct.sh2lib_handle* %9, i32 0, i32 16)
  %11 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x i8*]* @__const.sh2lib_connect.proto to i8*), i64 16, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8** %13, i8*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @esp_tls_conn_http_new(i8* %15, %struct.TYPE_5__* %7)
  %17 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %4, align 8
  %18 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = icmp eq i32* %16, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %54

23:                                               ; preds = %2
  %24 = call i32 @http_parser_url_init(%struct.http_parser_url* %8)
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @http_parser_parse_url(i8* %25, i32 %27, i32 0, %struct.http_parser_url* %8)
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %8, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @UF_HOST, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %29, i64 %35
  %37 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %8, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* @UF_HOST, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strndup(i8* %36, i32 %42)
  %44 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %4, align 8
  %45 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %4, align 8
  %47 = call i64 @do_http2_connect(%struct.sh2lib_handle* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %23
  %50 = load i32, i32* @TAG, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %54

53:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %57

54:                                               ; preds = %49, %20
  %55 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %4, align 8
  %56 = call i32 @sh2lib_free(%struct.sh2lib_handle* %55)
  store i32 -1, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.sh2lib_handle*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @esp_tls_conn_http_new(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @http_parser_url_init(%struct.http_parser_url*) #1

declare dso_local i32 @http_parser_parse_url(i8*, i32, i32, %struct.http_parser_url*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strndup(i8*, i32) #1

declare dso_local i64 @do_http2_connect(%struct.sh2lib_handle*) #1

declare dso_local i32 @sh2lib_free(%struct.sh2lib_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
