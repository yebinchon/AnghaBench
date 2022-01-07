; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_download_get_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_download_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.stat = type { i32 }
%struct.file_server_data = type { i8*, i32 }

@FILE_PATH_MAX = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Filename is too long\00", align 1
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Filename too long\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"/index.html\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/favicon.ico\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to stat file : %s\00", align 1
@HTTPD_404_NOT_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"File does not exist\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to read existing file : %s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to read existing file\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Sending file : %s (%ld bytes)...\00", align 1
@SCRATCH_BUFSIZE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"File sending failed!\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Failed to send file\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"File sending complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*)* @download_get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @download_get_handler(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %12 = load i32, i32* @FILE_PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.file_server_data*
  %20 = getelementptr inbounds %struct.file_server_data, %struct.file_server_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = trunc i64 %13 to i32
  %26 = call i8* @get_path_from_uri(i8* %15, i32 %21, i32 %24, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %34 = call i32 @httpd_resp_send_err(%struct.TYPE_10__* %32, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* @ESP_FAIL, align 8
  store i64 %35, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %134

36:                                               ; preds = %1
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = call i64 @http_resp_dir_html(%struct.TYPE_10__* %47, i8* %15)
  store i64 %48, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %134

49:                                               ; preds = %36
  %50 = call i32 @stat(i8* %15, %struct.stat* %7)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = call i64 @index_html_get_handler(%struct.TYPE_10__* %57)
  store i64 %58, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %134

59:                                               ; preds = %52
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = call i64 @favicon_get_handler(%struct.TYPE_10__* %64)
  store i64 %65, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %134

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* @TAG, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = load i32, i32* @HTTPD_404_NOT_FOUND, align 4
  %72 = call i32 @httpd_resp_send_err(%struct.TYPE_10__* %70, i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i64, i64* @ESP_FAIL, align 8
  store i64 %73, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %134

74:                                               ; preds = %49
  %75 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %75, i32** %6, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @TAG, align 4
  %80 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %15)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %83 = call i32 @httpd_resp_send_err(%struct.TYPE_10__* %81, i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %84 = load i64, i64* @ESP_FAIL, align 8
  store i64 %84, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %134

85:                                               ; preds = %74
  %86 = load i32, i32* @TAG, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %87, i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @set_content_type_from_file(%struct.TYPE_10__* %91, i8* %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.file_server_data*
  %98 = getelementptr inbounds %struct.file_server_data, %struct.file_server_data* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %10, align 8
  br label %100

100:                                              ; preds = %123, %85
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* @SCRATCH_BUFSIZE, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = call i64 @fread(i8* %101, i32 1, i32 %102, i32* %103)
  store i64 %104, i64* %11, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i64 @httpd_resp_send_chunk(%struct.TYPE_10__* %105, i8* %106, i64 %107)
  %109 = load i64, i64* @ESP_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %100
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @fclose(i32* %112)
  %114 = load i32, i32* @TAG, align 4
  %115 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_10__* %116, i32* null)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %120 = call i32 @httpd_resp_send_err(%struct.TYPE_10__* %118, i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %121 = load i64, i64* @ESP_FAIL, align 8
  store i64 %121, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %134

122:                                              ; preds = %100
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %11, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %100, label %126

126:                                              ; preds = %123
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @fclose(i32* %127)
  %129 = load i32, i32* @TAG, align 4
  %130 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = call i64 @httpd_resp_send_chunk(%struct.TYPE_10__* %131, i8* null, i64 0)
  %133 = load i64, i64* @ESP_OK, align 8
  store i64 %133, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %134

134:                                              ; preds = %126, %111, %78, %67, %63, %56, %46, %29
  %135 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i64, i64* %2, align 8
  ret i64 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @get_path_from_uri(i8*, i32, i32, i32) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #2

declare dso_local i32 @httpd_resp_send_err(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @http_resp_dir_html(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @index_html_get_handler(%struct.TYPE_10__*) #2

declare dso_local i64 @favicon_get_handler(%struct.TYPE_10__*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #2

declare dso_local i32 @set_content_type_from_file(%struct.TYPE_10__*, i8*) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @httpd_resp_send_chunk(%struct.TYPE_10__*, i8*, i64) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @httpd_resp_sendstr_chunk(%struct.TYPE_10__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
