; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_test_header_get_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/advanced_tests/main/extr_tests.c_test_header_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTPD_TYPE_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Header1\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate memory of %d bytes!\00", align 1
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Memory allocation failed\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Header1 content: %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Value1\00", align 1
@HTTPD_400_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Wrong value of Header1 received\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"Expected value and received value matched for Header1\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Error in getting value of Header1\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"Header1 not found\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"Header3\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Header3 content: %s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Value3\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Wrong value of Header3 received\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Expected value and received value matched for Header3\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Error in getting value of Header3\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Header3 not found\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Header2\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Header2 content: %s\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Header2 not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @test_header_get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_header_get_handler(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @HTTPD_TYPE_TEXT, align 4
  %8 = call i32 @httpd_resp_set_type(i32* %6, i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @httpd_req_get_hdr_value_len(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @TAG, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %25 = call i32 @httpd_resp_send_err(i32* %23, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %26, i64* %2, align 8
  br label %175

27:                                               ; preds = %13
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @httpd_req_get_hdr_value_str(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load i32, i32* @TAG, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %44 = call i32 @httpd_resp_send_err(i32* %42, i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %47, i64* %2, align 8
  br label %175

48:                                               ; preds = %34
  %49 = load i32, i32* @TAG, align 4
  %50 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %49, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48
  br label %61

52:                                               ; preds = %27
  %53 = load i32, i32* @TAG, align 4
  %54 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %57 = call i32 @httpd_resp_send_err(i32* %55, i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i64, i64* @ESP_FAIL, align 8
  store i64 %60, i64* %2, align 8
  br label %175

61:                                               ; preds = %51
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @free(i8* %62)
  br label %71

64:                                               ; preds = %1
  %65 = load i32, i32* @TAG, align 4
  %66 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %69 = call i32 @httpd_resp_send_err(i32* %67, i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %70 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %70, i64* %2, align 8
  br label %175

71:                                               ; preds = %61
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @httpd_req_get_hdr_value_len(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %127

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  %79 = call i8* @malloc(i32 %78)
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @TAG, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %88 = call i32 @httpd_resp_send_err(i32* %86, i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %89, i64* %2, align 8
  br label %175

90:                                               ; preds = %76
  %91 = load i32*, i32** %3, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @httpd_req_get_hdr_value_str(i32* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %92, i32 %93)
  %95 = load i64, i64* @ESP_OK, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %90
  %98 = load i32, i32* @TAG, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %99)
  %101 = load i8*, i8** %5, align 8
  %102 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %107 = call i32 @httpd_resp_send_err(i32* %105, i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %110, i64* %2, align 8
  br label %175

111:                                              ; preds = %97
  %112 = load i32, i32* @TAG, align 4
  %113 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %112, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111
  br label %124

115:                                              ; preds = %90
  %116 = load i32, i32* @TAG, align 4
  %117 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %120 = call i32 @httpd_resp_send_err(i32* %118, i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i64, i64* @ESP_FAIL, align 8
  store i64 %123, i64* %2, align 8
  br label %175

124:                                              ; preds = %114
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @free(i8* %125)
  br label %134

127:                                              ; preds = %71
  %128 = load i32, i32* @TAG, align 4
  %129 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %132 = call i32 @httpd_resp_send_err(i32* %130, i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %133 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %133, i64* %2, align 8
  br label %175

134:                                              ; preds = %124
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @httpd_req_get_hdr_value_len(i32* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  %139 = call i8* @malloc(i32 %138)
  store i8* %139, i8** %5, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* @TAG, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %3, align 8
  %147 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %148 = call i32 @httpd_resp_send_err(i32* %146, i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %149, i64* %2, align 8
  br label %175

150:                                              ; preds = %134
  %151 = load i32*, i32** %3, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i64 @httpd_req_get_hdr_value_str(i32* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %152, i32 %153)
  %155 = load i64, i64* @ESP_OK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  %158 = load i32, i32* @TAG, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* %159)
  %161 = load i32*, i32** %3, align 8
  %162 = load i8*, i8** %5, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @strlen(i8* %163)
  %165 = call i32 @httpd_resp_send(i32* %161, i8* %162, i32 %164)
  br label %173

166:                                              ; preds = %150
  %167 = load i32, i32* @TAG, align 4
  %168 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %169 = load i32*, i32** %3, align 8
  %170 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %171 = call i32 @httpd_resp_send_err(i32* %169, i32 %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %172 = load i64, i64* @ESP_FAIL, align 8
  store i64 %172, i64* %2, align 8
  br label %175

173:                                              ; preds = %157
  %174 = load i64, i64* @ESP_OK, align 8
  store i64 %174, i64* %2, align 8
  br label %175

175:                                              ; preds = %173, %166, %142, %127, %115, %104, %82, %64, %52, %41, %19
  %176 = load i64, i64* %2, align 8
  ret i64 %176
}

declare dso_local i32 @httpd_resp_set_type(i32*, i32) #1

declare dso_local i32 @httpd_req_get_hdr_value_len(i32*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @httpd_resp_send_err(i32*, i32, i8*) #1

declare dso_local i64 @httpd_req_get_hdr_value_str(i32*, i8*, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @httpd_resp_send(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
