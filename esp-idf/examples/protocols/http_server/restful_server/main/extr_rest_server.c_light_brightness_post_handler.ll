; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_rest_server.c_light_brightness_post_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_rest_server.c_light_brightness_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i32 }

@SCRATCH_BUFSIZE = common dso_local global i32 0, align 4
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"content too long\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to post control value\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@REST_TAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Light control: red = %d, green = %d, blue = %d\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Post control value successfully\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @light_brightness_post_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @light_brightness_post_handler(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_8__*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SCRATCH_BUFSIZE, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %27 = call i32 @httpd_resp_send_err(%struct.TYPE_9__* %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ESP_FAIL, align 4
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @httpd_req_recv(%struct.TYPE_9__* %35, i8* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %47 = call i32 @httpd_resp_send_err(%struct.TYPE_9__* %45, i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ESP_FAIL, align 4
  store i32 %48, i32* %2, align 4
  br label %82

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = call i32* @cJSON_Parse(i8* %58)
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call %struct.TYPE_10__* @cJSON_GetObjectItem(i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call %struct.TYPE_10__* @cJSON_GetObjectItem(i32* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call %struct.TYPE_10__* @cJSON_GetObjectItem(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @REST_TAG, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ESP_LOGI(i32 %72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @cJSON_Delete(i32* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = call i32 @httpd_resp_sendstr(%struct.TYPE_9__* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %81 = load i32, i32* @ESP_OK, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %53, %44, %24
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @httpd_resp_send_err(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @httpd_req_recv(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32* @cJSON_Parse(i8*) #1

declare dso_local %struct.TYPE_10__* @cJSON_GetObjectItem(i32*, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cJSON_Delete(i32*) #1

declare dso_local i32 @httpd_resp_sendstr(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
