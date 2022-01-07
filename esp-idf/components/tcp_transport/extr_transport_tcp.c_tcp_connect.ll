; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_tcp.c_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_tcp.c_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.timeval = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error create socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"[sock=%d],connecting to server IP:%s,Port:%d...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @tcp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_connect(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_4__* @esp_transport_get_context_data(i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %12, align 8
  %15 = call i32 @bzero(%struct.sockaddr_in* %10, i32 12)
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %19 = call i32 @inet_pton(i32 %16, i8* %17, %struct.TYPE_5__* %18)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @resolve_dns(i8* %22, %struct.sockaddr_in* %10)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %86

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i32, i32* @PF_INET, align 4
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = call i32 @socket(i32 %28, i32 %29, i32 0)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %86

40:                                               ; preds = %27
  %41 = load i32, i32* @AF_INET, align 4
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @htons(i32 %43)
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @esp_transport_utils_ms_to_timeval(i32 %46, %struct.timeval* %11)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SOL_SOCKET, align 4
  %52 = load i32, i32* @SO_RCVTIMEO, align 4
  %53 = call i32 @setsockopt(i32 %50, i32 %51, i32 %52, %struct.timeval* %11, i32 4)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SOL_SOCKET, align 4
  %58 = load i32, i32* @SO_SNDTIMEO, align 4
  %59 = call i32 @setsockopt(i32 %56, i32 %57, i32 %58, %struct.timeval* %11, i32 4)
  %60 = load i32, i32* @TAG, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @ipaddr_ntoa(i32* %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ESP_LOGD(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66, i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %73 = call i64 @connect(i32 %71, %struct.sockaddr* %72, i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %40
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 -1, i32* %81, align 4
  store i32 -1, i32* %5, align 4
  br label %86

82:                                               ; preds = %40
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %75, %37, %25
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_4__* @esp_transport_get_context_data(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @resolve_dns(i8*, %struct.sockaddr_in*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @esp_transport_utils_ms_to_timeval(i32, %struct.timeval*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ipaddr_ntoa(i32*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
