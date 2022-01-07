; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_rest_with_hostname_path.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_rest_with_hostname_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"httpbin.org\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/get\00", align 1
@_http_event_handler = common dso_local global i32 0, align 4
@HTTP_TRANSPORT_OVER_TCP = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"HTTP GET Status = %d, content_length = %d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"HTTP GET request failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"field1=value1&field2=value2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/post\00", align 1
@HTTP_METHOD_POST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"HTTP POST Status = %d, content_length = %d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"HTTP POST request failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"/put\00", align 1
@HTTP_METHOD_PUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"HTTP PUT Status = %d, content_length = %d\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"HTTP PUT request failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"/patch\00", align 1
@HTTP_METHOD_PATCH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [44 x i8] c"HTTP PATCH Status = %d, content_length = %d\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"HTTP PATCH request failed: %s\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"/delete\00", align 1
@HTTP_METHOD_DELETE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"HTTP DELETE Status = %d, content_length = %d\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"HTTP DELETE request failed: %s\00", align 1
@HTTP_METHOD_HEAD = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"HTTP HEAD Status = %d, content_length = %d\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"HTTP HEAD request failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @http_rest_with_hostname_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_rest_with_hostname_path() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %8 = load i32, i32* @_http_event_handler, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %10 = load i32, i32* @HTTP_TRANSPORT_OVER_TCP, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @esp_http_client_init(%struct.TYPE_3__* %1)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @esp_http_client_perform(i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @ESP_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %0
  %18 = load i32, i32* @TAG, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @esp_http_client_get_status_code(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @esp_http_client_get_content_length(i32 %21)
  %23 = call i32 @ESP_LOGI(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %22)
  br label %29

24:                                               ; preds = %0
  %25 = load i32, i32* @TAG, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @esp_err_to_name(i64 %26)
  %28 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %17
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @esp_http_client_set_url(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @HTTP_METHOD_POST, align 4
  %34 = call i32 @esp_http_client_set_method(i32 %32, i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call i32 @esp_http_client_set_post_field(i32 %35, i8* %36, i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @esp_http_client_perform(i32 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @ESP_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load i32, i32* @TAG, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @esp_http_client_get_status_code(i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @esp_http_client_get_content_length(i32 %49)
  %51 = call i32 @ESP_LOGI(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %48, i32 %50)
  br label %57

52:                                               ; preds = %29
  %53 = load i32, i32* @TAG, align 4
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @esp_err_to_name(i64 %54)
  %56 = call i32 @ESP_LOGE(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %45
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @esp_http_client_set_url(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @HTTP_METHOD_PUT, align 4
  %62 = call i32 @esp_http_client_set_method(i32 %60, i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i64 @esp_http_client_perform(i32 %63)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @ESP_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load i32, i32* @TAG, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @esp_http_client_get_status_code(i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @esp_http_client_get_content_length(i32 %72)
  %74 = call i32 @ESP_LOGI(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %71, i32 %73)
  br label %80

75:                                               ; preds = %57
  %76 = load i32, i32* @TAG, align 4
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @esp_err_to_name(i64 %77)
  %79 = call i32 @ESP_LOGE(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @esp_http_client_set_url(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @HTTP_METHOD_PATCH, align 4
  %85 = call i32 @esp_http_client_set_method(i32 %83, i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @esp_http_client_set_post_field(i32 %86, i8* null, i32 0)
  %88 = load i32, i32* %2, align 4
  %89 = call i64 @esp_http_client_perform(i32 %88)
  store i64 %89, i64* %3, align 8
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* @ESP_OK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load i32, i32* @TAG, align 4
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @esp_http_client_get_status_code(i32 %95)
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @esp_http_client_get_content_length(i32 %97)
  %99 = call i32 @ESP_LOGI(i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %96, i32 %98)
  br label %105

100:                                              ; preds = %80
  %101 = load i32, i32* @TAG, align 4
  %102 = load i64, i64* %3, align 8
  %103 = call i32 @esp_err_to_name(i64 %102)
  %104 = call i32 @ESP_LOGE(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %93
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @esp_http_client_set_url(i32 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @HTTP_METHOD_DELETE, align 4
  %110 = call i32 @esp_http_client_set_method(i32 %108, i32 %109)
  %111 = load i32, i32* %2, align 4
  %112 = call i64 @esp_http_client_perform(i32 %111)
  store i64 %112, i64* %3, align 8
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @ESP_OK, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load i32, i32* @TAG, align 4
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @esp_http_client_get_status_code(i32 %118)
  %120 = load i32, i32* %2, align 4
  %121 = call i32 @esp_http_client_get_content_length(i32 %120)
  %122 = call i32 @ESP_LOGI(i32 %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 %119, i32 %121)
  br label %128

123:                                              ; preds = %105
  %124 = load i32, i32* @TAG, align 4
  %125 = load i64, i64* %3, align 8
  %126 = call i32 @esp_err_to_name(i64 %125)
  %127 = call i32 @ESP_LOGE(i32 %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %123, %116
  %129 = load i32, i32* %2, align 4
  %130 = call i32 @esp_http_client_set_url(i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* @HTTP_METHOD_HEAD, align 4
  %133 = call i32 @esp_http_client_set_method(i32 %131, i32 %132)
  %134 = load i32, i32* %2, align 4
  %135 = call i64 @esp_http_client_perform(i32 %134)
  store i64 %135, i64* %3, align 8
  %136 = load i64, i64* %3, align 8
  %137 = load i64, i64* @ESP_OK, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %128
  %140 = load i32, i32* @TAG, align 4
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @esp_http_client_get_status_code(i32 %141)
  %143 = load i32, i32* %2, align 4
  %144 = call i32 @esp_http_client_get_content_length(i32 %143)
  %145 = call i32 @ESP_LOGI(i32 %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %142, i32 %144)
  br label %151

146:                                              ; preds = %128
  %147 = load i32, i32* @TAG, align 4
  %148 = load i64, i64* %3, align 8
  %149 = call i32 @esp_err_to_name(i64 %148)
  %150 = call i32 @ESP_LOGE(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %139
  %152 = load i32, i32* %2, align 4
  %153 = call i32 @esp_http_client_cleanup(i32 %152)
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
