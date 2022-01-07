; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_http_resp_dir_html.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_http_resp_dir_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.dirent = type { i64, i8* }
%struct.stat = type { i32 }

@FILE_PATH_MAX = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to stat dir : %s\00", align 1
@HTTPD_404_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Directory does not exist\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"<!DOCTYPE html><html><body>\00", align 1
@_binary_upload_script_html_end = external dso_local constant [0 x i8], align 1
@_binary_upload_script_html_start = external dso_local constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [210 x i8] c"<table class=\22fixed\22 border=\221\22><col width=\22800px\22 /><col width=\22300px\22 /><col width=\22300px\22 /><col width=\22100px\22 /><thead><tr><th>Name</th><th>Type</th><th>Size (Bytes)</th><th>Delete</th></tr></thead><tbody>\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to stat %s : %s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Found %s : %s (%s bytes)\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"<tr><td><a href=\22\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"</a></td><td>\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"</td><td>\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"<form method=\22post\22 action=\22/delete\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\22><button type=\22submit\22>Delete</button></form>\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"</td></tr>\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"</tbody></table>\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"</body></html>\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @http_resp_dir_html to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_resp_dir_html(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @FILE_PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32* @opendir(i8* %20)
  store i32* %21, i32** %12, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %13, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = trunc i64 %17 to i32
  %26 = call i32 @strlcpy(i8* %19, i8* %24, i32 %25)
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @TAG, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i32, i8*, i8*, ...) @ESP_LOGE(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32, i32* @HTTPD_404_NOT_FOUND, align 4
  %35 = call i32 @httpd_resp_send_err(%struct.TYPE_6__* %33, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ESP_FAIL, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %153

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i64 sub (i64 ptrtoint ([0 x i8]* @_binary_upload_script_html_end to i64), i64 ptrtoint ([0 x i8]* @_binary_upload_script_html_start to i64)), i64* %15, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @httpd_resp_send_chunk(%struct.TYPE_6__* %40, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_binary_upload_script_html_start, i64 0, i64 0), i64 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %107, %68, %37
  %46 = load i32*, i32** %12, align 8
  %47 = call %struct.dirent* @readdir(i32* %46)
  store %struct.dirent* %47, %struct.dirent** %10, align 8
  %48 = icmp ne %struct.dirent* %47, null
  br i1 %48, label %49, label %143

49:                                               ; preds = %45
  %50 = load %struct.dirent*, %struct.dirent** %10, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DT_DIR, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  store i8* %56, i8** %9, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds i8, i8* %19, i64 %57
  %59 = load %struct.dirent*, %struct.dirent** %10, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %17, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @strlcpy(i8* %58, i8* %61, i32 %64)
  %66 = call i32 @stat(i8* %19, %struct.stat* %11)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %75

68:                                               ; preds = %49
  %69 = load i32, i32* @TAG, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.dirent*, %struct.dirent** %10, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, i8*, ...) @ESP_LOGE(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %70, i8* %73)
  br label %45

75:                                               ; preds = %49
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sprintf(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @TAG, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.dirent*, %struct.dirent** %10, align 8
  %83 = getelementptr inbounds %struct.dirent, %struct.dirent* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %86 = call i32 @ESP_LOGI(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %81, i8* %84, i8* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %89, i8* %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = load %struct.dirent*, %struct.dirent** %10, align 8
  %96 = getelementptr inbounds %struct.dirent, %struct.dirent* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %94, i8* %97)
  %99 = load %struct.dirent*, %struct.dirent** %10, align 8
  %100 = getelementptr inbounds %struct.dirent, %struct.dirent* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DT_DIR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %75
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %75
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = load %struct.dirent*, %struct.dirent** %10, align 8
  %112 = getelementptr inbounds %struct.dirent, %struct.dirent* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %110, i8* %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %117, i8* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %124 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %122, i8* %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %129, i8* %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %135 = load %struct.dirent*, %struct.dirent** %10, align 8
  %136 = getelementptr inbounds %struct.dirent, %struct.dirent* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %134, i8* %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %139, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %45

143:                                              ; preds = %45
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @closedir(i32* %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__* %150, i8* null)
  %152 = load i32, i32* @ESP_OK, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %153

153:                                              ; preds = %143, %29
  %154 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*, ...) #2

declare dso_local i32 @httpd_resp_send_err(%struct.TYPE_6__*, i32, i8*) #2

declare dso_local i32 @httpd_resp_sendstr_chunk(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @httpd_resp_send_chunk(%struct.TYPE_6__*, i8*, i64) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
