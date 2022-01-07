; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@HTTP_STATE_UNINIT = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Client has not been initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to initialize request data\00", align 1
@HTTP_STATE_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Begin connect to: %s://%s:%d\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"No transport found\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Please enable HTTPS at menuconfig to allow requesting via https\00", align 1
@ESP_ERR_HTTP_INVALID_TRANSPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Connection failed, sock < 0\00", align 1
@ESP_ERR_HTTP_CONNECT = common dso_local global i32 0, align 4
@ASYNC_TRANS_CONNECT_FAIL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Connection failed\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Asynchronous mode doesn't work for HTTP based connection\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ASYNC_TRANS_CONNECTING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Connection not yet established\00", align 1
@ESP_ERR_HTTP_CONNECTING = common dso_local global i32 0, align 4
@HTTP_EVENT_ON_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @esp_http_client_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_http_client_connect(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HTTP_STATE_UNINIT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @ESP_LOGE(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %14, i32* %2, align 4
  br label %155

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = call i32 @esp_http_client_prepare(%struct.TYPE_8__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @ESP_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = call i32 @esp_http_client_close(%struct.TYPE_8__* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %155

26:                                               ; preds = %15
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HTTP_STATE_CONNECTED, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %153

32:                                               ; preds = %26
  %33 = load i32, i32* @TAG, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %41, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32* @esp_transport_list_get_transport(i32 %49, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %32
  %62 = load i32, i32* @TAG, align 4
  %63 = call i32 @ESP_LOGE(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strcasecmp(i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 @ESP_LOGE(i32 %71, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %61
  %74 = load i32, i32* @ESP_ERR_HTTP_INVALID_TRANSPORT, align 4
  store i32 %74, i32* %2, align 4
  br label %155

75:                                               ; preds = %32
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %102, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @esp_transport_connect(i32* %83, i32 %87, i32 %91, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %80
  %98 = load i32, i32* @TAG, align 4
  %99 = call i32 @ESP_LOGE(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* @ESP_ERR_HTTP_CONNECT, align 4
  store i32 %100, i32* %2, align 4
  br label %155

101:                                              ; preds = %80
  br label %146

102:                                              ; preds = %75
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @esp_transport_connect_async(i32* %105, i32 %109, i32 %113, i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @ASYNC_TRANS_CONNECT_FAIL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %102
  %122 = load i32, i32* @TAG, align 4
  %123 = call i32 @ESP_LOGE(i32 %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @strcasecmp(i32 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i32, i32* @TAG, align 4
  %132 = call i32 @ESP_LOGE(i32 %131, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %133 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %133, i32* %2, align 4
  br label %155

134:                                              ; preds = %121
  %135 = load i32, i32* @ESP_ERR_HTTP_CONNECT, align 4
  store i32 %135, i32* %2, align 4
  br label %155

136:                                              ; preds = %102
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @ASYNC_TRANS_CONNECTING, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* @TAG, align 4
  %142 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %143 = load i32, i32* @ESP_ERR_HTTP_CONNECTING, align 4
  store i32 %143, i32* %2, align 4
  br label %155

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %101
  %147 = load i64, i64* @HTTP_STATE_CONNECTED, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = load i32, i32* @HTTP_EVENT_ON_CONNECTED, align 4
  %152 = call i32 @http_dispatch_event(%struct.TYPE_8__* %150, i32 %151, i32* null, i32 0)
  br label %153

153:                                              ; preds = %146, %26
  %154 = load i32, i32* @ESP_OK, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %140, %134, %130, %97, %73, %20, %11
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_http_client_prepare(%struct.TYPE_8__*) #1

declare dso_local i32 @esp_http_client_close(%struct.TYPE_8__*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32* @esp_transport_list_get_transport(i32, i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i64 @esp_transport_connect(i32*, i32, i32, i32) #1

declare dso_local i32 @esp_transport_connect_async(i32*, i32, i32, i32) #1

declare dso_local i32 @http_dispatch_event(%struct.TYPE_8__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
