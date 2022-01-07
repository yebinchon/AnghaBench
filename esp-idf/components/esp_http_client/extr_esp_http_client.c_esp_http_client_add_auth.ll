; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_add_auth.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_add_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }

@HTTP_STATE_RES_COMPLETE_HEADER = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"UNAUTHORIZED: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"type = Digest\00", align 1
@HTTP_AUTH_TYPE_DIGEST = common dso_local global i8* null, align 8
@HTTP_AUTH_TYPE_NONE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"This authentication method is not supported: %s\00", align 1
@HTTP_METHOD_MAPPING = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"realm=\22\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"algorithm=\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"qop=\22\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"nonce=\22\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"opaque=\22\00", align 1
@.str.11 = private unnamed_addr constant [87 x i8] c"This request requires authentication, but does not provide header information for that\00", align 1
@HTTP_AUTH_TYPE_BASIC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_http_client_add_auth(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = icmp eq %struct.TYPE_8__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %105

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HTTP_STATE_RES_COMPLETE_HEADER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %105

14:                                               ; preds = %7
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %98

20:                                               ; preds = %14
  %21 = call i32 @http_utils_trim_whitespace(i8** %3)
  %22 = load i32, i32* @TAG, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @http_utils_str_starts_with(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i32, i32* @TAG, align 4
  %34 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i8*, i8** @HTTP_AUTH_TYPE_DIGEST, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  br label %47

39:                                               ; preds = %20
  %40 = load i8*, i8** @HTTP_AUTH_TYPE_NONE, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* @TAG, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @ESP_LOGE(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %105

47:                                               ; preds = %32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = call i32 @_clear_auth_data(%struct.TYPE_8__* %48)
  %50 = load i32*, i32** @HTTP_METHOD_MAPPING, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strdup(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  store i32 %57, i32* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = call i8* @http_utils_get_string_between(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 5
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = call i8* @http_utils_get_string_between(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  store i8* %73, i8** %77, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = call i8* @http_utils_get_string_between(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i8* %79, i8** %83, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = call i8* @http_utils_get_string_between(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i8* %85, i8** %89, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = call i8* @http_utils_get_string_between(i8* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i8* %91, i8** %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  br label %105

98:                                               ; preds = %14
  %99 = load i8*, i8** @HTTP_AUTH_TYPE_NONE, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load i32, i32* @TAG, align 4
  %104 = call i32 @ESP_LOGW(i32 %103, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.11, i64 0, i64 0))
  br label %105

105:                                              ; preds = %6, %13, %39, %98, %47
  ret void
}

declare dso_local i32 @http_utils_trim_whitespace(i8**) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i64 @http_utils_str_starts_with(i8*, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*) #1

declare dso_local i32 @_clear_auth_data(%struct.TYPE_8__*) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i8* @http_utils_get_string_between(i8*, i8*, i8*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
