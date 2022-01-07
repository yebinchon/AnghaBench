; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_delete_post_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_delete_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.stat = type { i32 }
%struct.file_server_data = type { i32 }

@FILE_PATH_MAX = common dso_local global i32 0, align 4
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Filename too long\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid filename : %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid filename\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"File does not exist : %s\00", align 1
@HTTPD_400_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"File does not exist\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Deleting file : %s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"303 See Other\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"File deleted successfully\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @delete_post_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_post_handler(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load i32, i32* @FILE_PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.file_server_data*
  %17 = getelementptr inbounds %struct.file_server_data, %struct.file_server_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 8
  %24 = sub i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = trunc i64 %10 to i32
  %27 = call i8* @get_path_from_uri(i8* %12, i32 %18, i32 %25, i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %33 = call i32 @httpd_resp_send_err(%struct.TYPE_7__* %31, i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ESP_FAIL, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %76

35:                                               ; preds = %1
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load i32, i32* @TAG, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @ESP_LOGE(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %51 = call i32 @httpd_resp_send_err(%struct.TYPE_7__* %49, i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ESP_FAIL, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %76

53:                                               ; preds = %35
  %54 = call i32 @stat(i8* %12, %struct.stat* %6)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* @TAG, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @ESP_LOGE(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %62 = call i32 @httpd_resp_send_err(%struct.TYPE_7__* %60, i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @ESP_FAIL, align 4
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %76

64:                                               ; preds = %53
  %65 = load i32, i32* @TAG, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @ESP_LOGI(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  %68 = call i32 @unlink(i8* %12)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = call i32 @httpd_resp_set_status(%struct.TYPE_7__* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = call i32 @httpd_resp_set_hdr(%struct.TYPE_7__* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = call i32 @httpd_resp_sendstr(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i32, i32* @ESP_OK, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %76

76:                                               ; preds = %64, %56, %45, %30
  %77 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @get_path_from_uri(i8*, i32, i32, i32) #2

declare dso_local i32 @httpd_resp_send_err(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @httpd_resp_set_status(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @httpd_resp_set_hdr(%struct.TYPE_7__*, i8*, i8*) #2

declare dso_local i32 @httpd_resp_sendstr(%struct.TYPE_7__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
