; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls.c_esp_tls_low_level_conn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls.c_esp_tls_low_level_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"empty esp_tls parameter\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@ERR_TYPE_ESP = common dso_local global i32 0, align 4
@tcp_read = common dso_local global i32 0, align 4
@tcp_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"non-tls connection established\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"connecting...\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"select() timed out\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Non blocking connect failed\00", align 1
@ERR_TYPE_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ESP_ERR_ESP_TLS_SOCKET_SETOPT_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"create_ssl_handle failed\00", align 1
@_esp_tls_read = common dso_local global i32 0, align 4
@_esp_tls_write = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"handshake in progress...\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to open a new connection\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid esp-tls state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*)* @esp_tls_low_level_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_tls_low_level_conn(i8* %0, i32 %1, i32 %2, %struct.TYPE_12__* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %204

21:                                               ; preds = %5
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %200 [
    i32 128, label %25
    i32 131, label %86
    i32 129, label %191
    i32 130, label %197
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = call i32 @esp_tcp_connect(i8* %34, i32 %35, i32 %36, i32* %38, %struct.TYPE_11__* %39, %struct.TYPE_12__* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @ESP_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ERR_TYPE_ESP, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %47, i32 %48, i32 %49)
  store i32 -1, i32* %6, align 4
  br label %204

51:                                               ; preds = %33
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @tcp_read, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @tcp_write, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @TAG, align 4
  %62 = call i32 @ESP_LOGD(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %204

63:                                               ; preds = %51
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 7
  %71 = call i32 @FD_ZERO(i32* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 7
  %77 = call i32 @FD_SET(i32 %74, i32* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %68, %63
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32 131, i32* %85, align 4
  br label %86

86:                                               ; preds = %21, %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %162

91:                                               ; preds = %86
  %92 = load i32, i32* @TAG, align 4
  %93 = call i32 @ESP_LOGD(i32 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ms_to_timeval(i32 %96, %struct.timeval* %13)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 7
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %91
  br label %112

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111, %110
  %113 = phi %struct.timeval* [ %13, %110 ], [ null, %111 ]
  %114 = call i32 @select(i32 %101, i32* %103, i32* %105, i32* null, %struct.timeval* %113)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @TAG, align 4
  %118 = call i32 @ESP_LOGD(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %204

119:                                              ; preds = %112
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 7
  %125 = call i32 @FD_ISSET(i32 %122, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %119
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 6
  %133 = call i32 @FD_ISSET(i32 %130, i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %127, %119
  store i32 4, i32* %15, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SOL_SOCKET, align 4
  %140 = load i32, i32* @SO_ERROR, align 4
  %141 = call i32 @getsockopt(i32 %138, i32 %139, i32 %140, i32* %14, i32* %15)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %135
  %144 = load i32, i32* @TAG, align 4
  %145 = call i32 @ESP_LOGD(i32 %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ERR_TYPE_SYSTEM, align 4
  %150 = load i32, i32* @errno, align 4
  %151 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %148, i32 %149, i32 %150)
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ERR_TYPE_ESP, align 4
  %156 = load i32, i32* @ESP_ERR_ESP_TLS_SOCKET_SETOPT_FAILED, align 4
  %157 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %154, i32 %155, i32 %156)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  store i32 130, i32* %159, align 4
  store i32 -1, i32* %6, align 4
  br label %204

160:                                              ; preds = %135
  br label %161

161:                                              ; preds = %160, %127
  br label %162

162:                                              ; preds = %161, %86
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %167 = call i32 @create_ssl_handle(i8* %163, i32 %164, %struct.TYPE_12__* %165, %struct.TYPE_11__* %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @ESP_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %162
  %172 = load i32, i32* @TAG, align 4
  %173 = call i32 @ESP_LOGE(i32 %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ERR_TYPE_ESP, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %176, i32 %177, i32 %178)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  store i32 130, i32* %181, align 4
  store i32 -1, i32* %6, align 4
  br label %204

182:                                              ; preds = %162
  %183 = load i32, i32* @_esp_tls_read, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @_esp_tls_write, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  store i32 129, i32* %190, align 4
  br label %191

191:                                              ; preds = %21, %182
  %192 = load i32, i32* @TAG, align 4
  %193 = call i32 @ESP_LOGD(i32 %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %196 = call i32 @esp_tls_handshake(%struct.TYPE_11__* %194, %struct.TYPE_12__* %195)
  store i32 %196, i32* %6, align 4
  br label %204

197:                                              ; preds = %21
  %198 = load i32, i32* @TAG, align 4
  %199 = call i32 @ESP_LOGE(i32 %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %203

200:                                              ; preds = %21
  %201 = load i32, i32* @TAG, align 4
  %202 = call i32 @ESP_LOGE(i32 %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %197
  store i32 -1, i32* %6, align 4
  br label %204

204:                                              ; preds = %203, %191, %171, %143, %116, %54, %44, %18
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_tcp_connect(i8*, i32, i32, i32*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @ms_to_timeval(i32, %struct.timeval*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @create_ssl_handle(i8*, i32, %struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @esp_tls_handshake(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
