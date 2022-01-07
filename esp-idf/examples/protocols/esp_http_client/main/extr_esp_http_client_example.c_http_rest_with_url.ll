; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_rest_with_url.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_rest_with_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"http://httpbin.org/get\00", align 1
@_http_event_handler = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"HTTP GET Status = %d, content_length = %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"HTTP GET request failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"field1=value1&field2=value2\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"http://httpbin.org/post\00", align 1
@HTTP_METHOD_POST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"HTTP POST Status = %d, content_length = %d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"HTTP POST request failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"http://httpbin.org/put\00", align 1
@HTTP_METHOD_PUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"HTTP PUT Status = %d, content_length = %d\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"HTTP PUT request failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"http://httpbin.org/patch\00", align 1
@HTTP_METHOD_PATCH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"HTTP PATCH Status = %d, content_length = %d\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"HTTP PATCH request failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"http://httpbin.org/delete\00", align 1
@HTTP_METHOD_DELETE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"HTTP DELETE Status = %d, content_length = %d\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"HTTP DELETE request failed: %s\00", align 1
@HTTP_METHOD_HEAD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"HTTP HEAD Status = %d, content_length = %d\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"HTTP HEAD request failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @http_rest_with_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_rest_with_url() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %7 = load i32, i32* @_http_event_handler, align 4
  store i32 %7, i32* %6, align 8
  %8 = call i32 @esp_http_client_init(%struct.TYPE_3__* %1)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @esp_http_client_perform(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @ESP_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %0
  %15 = load i32, i32* @TAG, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @esp_http_client_get_status_code(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @esp_http_client_get_content_length(i32 %18)
  %20 = call i32 @ESP_LOGI(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %19)
  br label %26

21:                                               ; preds = %0
  %22 = load i32, i32* @TAG, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @esp_err_to_name(i64 %23)
  %25 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %14
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @esp_http_client_set_url(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @HTTP_METHOD_POST, align 4
  %31 = call i32 @esp_http_client_set_method(i32 %29, i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @esp_http_client_set_post_field(i32 %32, i8* %33, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @esp_http_client_perform(i32 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %26
  %43 = load i32, i32* @TAG, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @esp_http_client_get_status_code(i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @esp_http_client_get_content_length(i32 %46)
  %48 = call i32 @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %45, i32 %47)
  br label %54

49:                                               ; preds = %26
  %50 = load i32, i32* @TAG, align 4
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @esp_err_to_name(i64 %51)
  %53 = call i32 @ESP_LOGE(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @esp_http_client_set_url(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @HTTP_METHOD_PUT, align 4
  %59 = call i32 @esp_http_client_set_method(i32 %57, i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i64 @esp_http_client_perform(i32 %60)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @ESP_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load i32, i32* @TAG, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @esp_http_client_get_status_code(i32 %67)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @esp_http_client_get_content_length(i32 %69)
  %71 = call i32 @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %68, i32 %70)
  br label %77

72:                                               ; preds = %54
  %73 = load i32, i32* @TAG, align 4
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @esp_err_to_name(i64 %74)
  %76 = call i32 @ESP_LOGE(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %72, %65
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @esp_http_client_set_url(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @HTTP_METHOD_PATCH, align 4
  %82 = call i32 @esp_http_client_set_method(i32 %80, i32 %81)
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @esp_http_client_set_post_field(i32 %83, i8* null, i32 0)
  %85 = load i32, i32* %2, align 4
  %86 = call i64 @esp_http_client_perform(i32 %85)
  store i64 %86, i64* %3, align 8
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* @ESP_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %77
  %91 = load i32, i32* @TAG, align 4
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @esp_http_client_get_status_code(i32 %92)
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @esp_http_client_get_content_length(i32 %94)
  %96 = call i32 @ESP_LOGI(i32 %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %93, i32 %95)
  br label %102

97:                                               ; preds = %77
  %98 = load i32, i32* @TAG, align 4
  %99 = load i64, i64* %3, align 8
  %100 = call i32 @esp_err_to_name(i64 %99)
  %101 = call i32 @ESP_LOGE(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %97, %90
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @esp_http_client_set_url(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @HTTP_METHOD_DELETE, align 4
  %107 = call i32 @esp_http_client_set_method(i32 %105, i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = call i64 @esp_http_client_perform(i32 %108)
  store i64 %109, i64* %3, align 8
  %110 = load i64, i64* %3, align 8
  %111 = load i64, i64* @ESP_OK, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %102
  %114 = load i32, i32* @TAG, align 4
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @esp_http_client_get_status_code(i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @esp_http_client_get_content_length(i32 %117)
  %119 = call i32 @ESP_LOGI(i32 %114, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %116, i32 %118)
  br label %125

120:                                              ; preds = %102
  %121 = load i32, i32* @TAG, align 4
  %122 = load i64, i64* %3, align 8
  %123 = call i32 @esp_err_to_name(i64 %122)
  %124 = call i32 @ESP_LOGE(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %120, %113
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @esp_http_client_set_url(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @HTTP_METHOD_HEAD, align 4
  %130 = call i32 @esp_http_client_set_method(i32 %128, i32 %129)
  %131 = load i32, i32* %2, align 4
  %132 = call i64 @esp_http_client_perform(i32 %131)
  store i64 %132, i64* %3, align 8
  %133 = load i64, i64* %3, align 8
  %134 = load i64, i64* @ESP_OK, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %125
  %137 = load i32, i32* @TAG, align 4
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @esp_http_client_get_status_code(i32 %138)
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @esp_http_client_get_content_length(i32 %140)
  %142 = call i32 @ESP_LOGI(i32 %137, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %139, i32 %141)
  br label %148

143:                                              ; preds = %125
  %144 = load i32, i32* @TAG, align 4
  %145 = load i64, i64* %3, align 8
  %146 = call i32 @esp_err_to_name(i64 %145)
  %147 = call i32 @ESP_LOGE(i32 %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %143, %136
  %149 = load i32, i32* %2, align 4
  %150 = call i32 @esp_http_client_cleanup(i32 %149)
  ret void
}

declare dso_local i32 @esp_http_client_init(%struct.TYPE_3__*) #1

declare dso_local i64 @esp_http_client_perform(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @esp_http_client_get_status_code(i32) #1

declare dso_local i32 @esp_http_client_get_content_length(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i32 @esp_http_client_set_url(i32, i8*) #1

declare dso_local i32 @esp_http_client_set_method(i32, i32) #1

declare dso_local i32 @esp_http_client_set_post_field(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @esp_http_client_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
