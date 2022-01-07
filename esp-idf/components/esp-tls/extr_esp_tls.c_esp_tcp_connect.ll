; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls.c_esp_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls.c_esp_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.addrinfo = type { i64, i32, i64, i32, i32 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i64, i8* }
%struct.timeval = type { i32 }

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Failed to create socket (family %d socktype %d protocol %d)\00", align 1
@ERR_TYPE_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESP_ERR_ESP_TLS_CANNOT_CREATE_SOCKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unsupported protocol family %d\00", align 1
@ESP_ERR_ESP_TLS_UNSUPPORTED_PROTOCOL_FAMILY = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to connnect to host (errno %d)\00", align 1
@ESP_ERR_ESP_TLS_FAILED_CONNECT_TO_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*)* @esp_tcp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @esp_tcp_connect(i8* %0, i32 %1, i32 %2, i32* %3, %struct.TYPE_5__* %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sockaddr_in*, align 8
  %19 = alloca %struct.sockaddr_in6*, align 8
  %20 = alloca %struct.timeval, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %13, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @resolve_host_name(i8* %22, i32 %23, %struct.addrinfo** %15)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* @ESP_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %7, align 8
  br label %188

29:                                               ; preds = %6
  %30 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @socket(i64 %32, i32 %35, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %29
  %43 = load i32, i32* @TAG, align 4
  %44 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, i64, ...) @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %46, i32 %49, i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ERR_TYPE_SYSTEM, align 4
  %58 = load i64, i64* @errno, align 8
  %59 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %56, i32 %57, i64 %58)
  %60 = load i64, i64* @ESP_ERR_ESP_TLS_CANNOT_CREATE_SOCKET, align 8
  store i64 %60, i64* %14, align 8
  br label %184

61:                                               ; preds = %29
  %62 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AF_INET, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %71, %struct.sockaddr_in** %18, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @htons(i32 %72)
  %74 = load %struct.sockaddr_in*, %struct.sockaddr_in** %18, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.sockaddr_in*, %struct.sockaddr_in** %18, align 8
  %77 = bitcast %struct.sockaddr_in* %76 to i8*
  store i8* %77, i8** %17, align 8
  br label %106

78:                                               ; preds = %61
  %79 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AF_INET6, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %88, %struct.sockaddr_in6** %19, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i8* @htons(i32 %89)
  %91 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* @AF_INET6, align 8
  %94 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %95 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %97 = bitcast %struct.sockaddr_in6* %96 to i8*
  store i8* %97, i8** %17, align 8
  br label %105

98:                                               ; preds = %78
  %99 = load i32, i32* @TAG, align 4
  %100 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i32, i8*, i64, ...) @ESP_LOGE(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = load i64, i64* @ESP_ERR_ESP_TLS_UNSUPPORTED_PROTOCOL_FAMILY, align 8
  store i64 %104, i64* %14, align 8
  br label %181

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105, %67
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %108 = icmp ne %struct.TYPE_6__* %107, null
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @ms_to_timeval(i64 %117, %struct.timeval* %20)
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @SOL_SOCKET, align 4
  %121 = load i32, i32* @SO_RCVTIMEO, align 4
  %122 = call i32 @setsockopt(i32 %119, i32 %120, i32 %121, %struct.timeval* %20, i32 4)
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @SOL_SOCKET, align 4
  %125 = load i32, i32* @SO_SNDTIMEO, align 4
  %126 = call i32 @setsockopt(i32 %123, i32 %124, i32 %125, %struct.timeval* %20, i32 4)
  br label %127

127:                                              ; preds = %114, %109
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @F_GETFL, align 4
  %135 = call i32 @fcntl(i32 %133, i32 %134, i32 0)
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* @F_SETFL, align 4
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* @O_NONBLOCK, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @fcntl(i32 %136, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %132, %127
  br label %143

143:                                              ; preds = %142, %106
  %144 = load i32, i32* %16, align 4
  %145 = load i8*, i8** %17, align 8
  %146 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %147 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @connect(i32 %144, i8* %145, i32 %148)
  store i64 %149, i64* %14, align 8
  %150 = load i64, i64* %14, align 8
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %143
  %153 = load i64, i64* @errno, align 8
  %154 = load i64, i64* @EINPROGRESS, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %158 = icmp ne %struct.TYPE_6__* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %159, %156, %152
  %165 = load i32, i32* @TAG, align 4
  %166 = load i64, i64* @errno, align 8
  %167 = call i32 (i32, i8*, i64, ...) @ESP_LOGE(i32 %165, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %166)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @ERR_TYPE_SYSTEM, align 4
  %172 = load i64, i64* @errno, align 8
  %173 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %170, i32 %171, i64 %172)
  %174 = load i64, i64* @ESP_ERR_ESP_TLS_FAILED_CONNECT_TO_HOST, align 8
  store i64 %174, i64* %14, align 8
  br label %181

175:                                              ; preds = %159, %143
  %176 = load i32, i32* %16, align 4
  %177 = load i32*, i32** %11, align 8
  store i32 %176, i32* %177, align 4
  %178 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %179 = call i32 @freeaddrinfo(%struct.addrinfo* %178)
  %180 = load i64, i64* @ESP_OK, align 8
  store i64 %180, i64* %7, align 8
  br label %188

181:                                              ; preds = %164, %98
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @close(i32 %182)
  br label %184

184:                                              ; preds = %181, %42
  %185 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %186 = call i32 @freeaddrinfo(%struct.addrinfo* %185)
  %187 = load i64, i64* %14, align 8
  store i64 %187, i64* %7, align 8
  br label %188

188:                                              ; preds = %184, %175, %27
  %189 = load i64, i64* %7, align 8
  ret i64 %189
}

declare dso_local i64 @resolve_host_name(i8*, i32, %struct.addrinfo**) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64, ...) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ms_to_timeval(i64, %struct.timeval*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @connect(i32, i8*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
