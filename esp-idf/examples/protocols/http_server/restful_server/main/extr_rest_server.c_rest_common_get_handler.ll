; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_rest_server.c_rest_common_get_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_rest_server.c_rest_common_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@FILE_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"/index.html\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@REST_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to open file : %s\00", align 1
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to read existing file\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@SCRATCH_BUFSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to read file : %s\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"File sending failed!\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Failed to send file\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"File sending complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @rest_common_get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rest_common_get_handler(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %11 = load i32, i32* @FILE_PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = trunc i64 %12 to i32
  %23 = call i32 @strlcpy(i8* %14, i32 %21, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %26, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = trunc i64 %12 to i32
  %39 = call i32 @strlcat(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = trunc i64 %12 to i32
  %45 = call i32 @strlcat(i8* %14, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call i32 @open(i8* %14, i32 %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @REST_TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %56 = call i32 @httpd_resp_send_err(%struct.TYPE_9__* %54, i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i64, i64* @ESP_FAIL, align 8
  store i64 %57, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %109

58:                                               ; preds = %46
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call i32 @set_content_type_from_file(%struct.TYPE_9__* %59, i8* %14)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %98, %58
  %65 = load i32, i32* %7, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @SCRATCH_BUFSIZE, align 4
  %68 = call i32 @read(i32 %65, i8* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @REST_TAG, align 4
  %73 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  br label %97

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @httpd_resp_send_chunk(%struct.TYPE_9__* %78, i8* %79, i32 %80)
  %82 = load i64, i64* @ESP_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @close(i32 %85)
  %87 = load i32, i32* @REST_TAG, align 4
  %88 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = call i32 @httpd_resp_sendstr_chunk(%struct.TYPE_9__* %89, i32* null)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %93 = call i32 @httpd_resp_send_err(%struct.TYPE_9__* %91, i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i64, i64* @ESP_FAIL, align 8
  store i64 %94, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %109

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %74
  br label %97

97:                                               ; preds = %96, %71
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %64, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* @REST_TAG, align 4
  %105 = call i32 @ESP_LOGI(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = call i64 @httpd_resp_send_chunk(%struct.TYPE_9__* %106, i8* null, i32 0)
  %108 = load i64, i64* @ESP_OK, align 8
  store i64 %108, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %109

109:                                              ; preds = %101, %84, %51
  %110 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #2

declare dso_local i32 @httpd_resp_send_err(%struct.TYPE_9__*, i32, i8*) #2

declare dso_local i32 @set_content_type_from_file(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i64 @httpd_resp_send_chunk(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @httpd_resp_sendstr_chunk(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @ESP_LOGI(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
