; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_request/main/extr_http_request_example_main.c_http_get_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_request/main/extr_http_request_example_main.c_http_get_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i32, i32 }
%struct.in_addr = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.sockaddr_in = type { %struct.in_addr }

@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@WEB_SERVER = common dso_local global i32 0, align 4
@WEB_PORT = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DNS lookup failed err=%d res=%p\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DNS lookup succeeded. IP=%s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"... Failed to allocate socket.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"... allocated socket\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"... socket connect failed errno=%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"... connected\00", align 1
@REQUEST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"... socket send failed\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"... socket send success\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"... failed to set socket receiving timeout\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"... set socket receiving timeout success\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"... done reading from socket. Last read return=%d errno=%d.\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%d... \00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Starting again!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_get_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_get_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.addrinfo, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %3, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %3, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %3, i32 0, i32 2
  %16 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %3, i32 0, i32 3
  %18 = load i32, i32* @AF_INET, align 4
  store i32 %18, i32* %17, align 4
  br label %19

19:                                               ; preds = %1, %28, %57, %77, %99, %117, %171
  %20 = load i32, i32* @WEB_SERVER, align 4
  %21 = load i32, i32* @WEB_PORT, align 4
  %22 = call i32 @getaddrinfo(i32 %20, i32 %21, %struct.addrinfo* %3, %struct.addrinfo** %4)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %27 = icmp eq %struct.addrinfo* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25, %19
  %29 = load i32, i32* @TAG, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %32 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30, %struct.addrinfo* %31)
  %33 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %34 = sdiv i32 1000, %33
  %35 = call i32 @vTaskDelay(i32 %34)
  br label %19

36:                                               ; preds = %25
  %37 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.sockaddr_in*
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 0
  store %struct.in_addr* %41, %struct.in_addr** %5, align 8
  %42 = load i32, i32* @TAG, align 4
  %43 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %44 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @inet_ntoa(i32 %45)
  %47 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @socket(i32 %50, i32 %53, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %36
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %61 = call i32 @freeaddrinfo(%struct.addrinfo* %60)
  %62 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %63 = sdiv i32 1000, %62
  %64 = call i32 @vTaskDelay(i32 %63)
  br label %19

65:                                               ; preds = %36
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @connect(i32 %68, i64 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %65
  %78 = load i32, i32* @TAG, align 4
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %84 = call i32 @freeaddrinfo(%struct.addrinfo* %83)
  %85 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %86 = sdiv i32 4000, %85
  %87 = call i32 @vTaskDelay(i32 %86)
  br label %19

88:                                               ; preds = %65
  %89 = load i32, i32* @TAG, align 4
  %90 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %92 = call i32 @freeaddrinfo(%struct.addrinfo* %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @REQUEST, align 4
  %95 = load i32, i32* @REQUEST, align 4
  %96 = call i32 @strlen(i32 %95)
  %97 = call i64 @write(i32 %93, i32 %94, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %88
  %100 = load i32, i32* @TAG, align 4
  %101 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %105 = sdiv i32 4000, %104
  %106 = call i32 @vTaskDelay(i32 %105)
  br label %19

107:                                              ; preds = %88
  %108 = load i32, i32* @TAG, align 4
  %109 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 5, i32* %110, align 8
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @SOL_SOCKET, align 4
  %114 = load i32, i32* @SO_RCVTIMEO, align 4
  %115 = call i64 @setsockopt(i32 %112, i32 %113, i32 %114, %struct.timeval* %10, i32 16)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %107
  %118 = load i32, i32* @TAG, align 4
  %119 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %118, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @close(i32 %120)
  %122 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %123 = sdiv i32 4000, %122
  %124 = call i32 @vTaskDelay(i32 %123)
  br label %19

125:                                              ; preds = %107
  %126 = load i32, i32* @TAG, align 4
  %127 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %128

128:                                              ; preds = %148, %125
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %130 = call i32 @bzero(i8* %129, i32 64)
  %131 = load i32, i32* %6, align 4
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %133 = call i32 @read(i32 %131, i8* %132, i32 63)
  store i32 %133, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %144, %128
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @putchar(i8 signext %142)
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %134

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %128, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @TAG, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @errno, align 4
  %155 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %152, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @close(i32 %156)
  store i32 10, i32* %12, align 4
  br label %158

158:                                              ; preds = %168, %151
  %159 = load i32, i32* %12, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load i32, i32* @TAG, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %166 = sdiv i32 1000, %165
  %167 = call i32 @vTaskDelay(i32 %166)
  br label %168

168:                                              ; preds = %161
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %12, align 4
  br label %158

171:                                              ; preds = %158
  %172 = load i32, i32* @TAG, align 4
  %173 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %172, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %19
}

declare dso_local i32 @getaddrinfo(i32, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i64 @connect(i32, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @write(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
