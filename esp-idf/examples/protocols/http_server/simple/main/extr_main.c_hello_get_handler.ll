; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_hello_get_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_hello_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Found header => Host: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Test-Header-2\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Found header => Test-Header-2: %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Test-Header-1\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Found header => Test-Header-1: %s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Found URL query => %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"query1\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Found URL query parameter => query1=%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"query3\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Found URL query parameter => query3=%s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"query2\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Found URL query parameter => query2=%s\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Custom-Header-1\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Custom-Value-1\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Custom-Header-2\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Custom-Value-2\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Request headers lost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @hello_get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hello_get_handler(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = call i32 @httpd_req_get_hdr_value_len(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ugt i64 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @httpd_req_get_hdr_value_str(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* @TAG, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %13
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = call i32 @httpd_req_get_hdr_value_len(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ugt i64 %34, 1
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = call i8* @malloc(i64 %37)
  store i8* %38, i8** %3, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @httpd_req_get_hdr_value_str(%struct.TYPE_9__* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %40, i64 %41)
  %43 = load i64, i64* @ESP_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @TAG, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %49, %29
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = call i32 @httpd_req_get_hdr_value_len(%struct.TYPE_9__* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp ugt i64 %57, 1
  br i1 %58, label %59, label %75

59:                                               ; preds = %52
  %60 = load i64, i64* %4, align 8
  %61 = call i8* @malloc(i64 %60)
  store i8* %61, i8** %3, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @httpd_req_get_hdr_value_str(%struct.TYPE_9__* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %63, i64 %64)
  %66 = load i64, i64* @ESP_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @TAG, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @free(i8* %73)
  br label %75

75:                                               ; preds = %72, %52
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = call i32 @httpd_req_get_url_query_len(%struct.TYPE_9__* %76)
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ugt i64 %80, 1
  br i1 %81, label %82, label %128

82:                                               ; preds = %75
  %83 = load i64, i64* %4, align 8
  %84 = call i8* @malloc(i64 %83)
  store i8* %84, i8** %3, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = load i64, i64* %4, align 8
  %88 = call i64 @httpd_req_get_url_query_str(%struct.TYPE_9__* %85, i8* %86, i64 %87)
  %89 = load i64, i64* @ESP_OK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %125

91:                                               ; preds = %82
  %92 = load i32, i32* @TAG, align 4
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %97 = call i64 @httpd_query_key_value(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %96, i32 32)
  %98 = load i64, i64* @ESP_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i32, i32* @TAG, align 4
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %103 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %100, %91
  %105 = load i8*, i8** %3, align 8
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %107 = call i64 @httpd_query_key_value(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %106, i32 32)
  %108 = load i64, i64* @ESP_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @TAG, align 4
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %113 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i8*, i8** %3, align 8
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %117 = call i64 @httpd_query_key_value(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %116, i32 32)
  %118 = load i64, i64* @ESP_OK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @TAG, align 4
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %123 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %120, %114
  br label %125

125:                                              ; preds = %124, %82
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %125, %75
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = call i32 @httpd_resp_set_hdr(%struct.TYPE_9__* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %132 = call i32 @httpd_resp_set_hdr(%struct.TYPE_9__* %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i8*
  store i8* %136, i8** %6, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = call i32 @strlen(i8* %139)
  %141 = call i32 @httpd_resp_send(%struct.TYPE_9__* %137, i8* %138, i32 %140)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %143 = call i32 @httpd_req_get_hdr_value_len(%struct.TYPE_9__* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %128
  %146 = load i32, i32* @TAG, align 4
  %147 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %128
  %149 = load i64, i64* @ESP_OK, align 8
  ret i64 %149
}

declare dso_local i32 @httpd_req_get_hdr_value_len(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @httpd_req_get_hdr_value_str(%struct.TYPE_9__*, i8*, i8*, i64) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @httpd_req_get_url_query_len(%struct.TYPE_9__*) #1

declare dso_local i64 @httpd_req_get_url_query_str(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i64 @httpd_query_key_value(i8*, i8*, i8*, i32) #1

declare dso_local i32 @httpd_resp_set_hdr(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @httpd_resp_send(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
