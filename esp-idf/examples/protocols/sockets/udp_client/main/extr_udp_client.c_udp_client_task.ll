; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/sockets/udp_client/main/extr_udp_client.c_udp_client_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/sockets/udp_client/main/extr_udp_client.c_udp_client_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i8*, i8* }
%struct.sockaddr_in = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@HOST_IP_ADDR = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@PORT = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to create socket: errno %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Socket created, sending to %s:%d\00", align 1
@payload = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Error occurred during sending: errno %d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Message sent\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"recvfrom failed: errno %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Received %d bytes from %s:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Shutting down socket and restarting...\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @udp_client_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_client_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in6, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %13

13:                                               ; preds = %1, %95
  %14 = load i32, i32* @HOST_IP_ADDR, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %16 = call i32 @inet6_aton(i32 %14, i32* %15)
  %17 = load i8*, i8** @AF_INET6, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @PORT, align 4
  %20 = call i8* @htons(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @AF_INET6, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @IPPROTO_IPV6, align 4
  store i32 %24, i32* %6, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %28 = call i32 @inet6_ntoa_r(i32 %26, i8* %27, i32 127)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SOCK_DGRAM, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @socket(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %13
  %36 = load i32, i32* @TAG, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %96

39:                                               ; preds = %13
  %40 = load i32, i32* @TAG, align 4
  %41 = load i32, i32* @HOST_IP_ADDR, align 4
  %42 = load i32, i32* @PORT, align 4
  %43 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %81
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @payload, align 4
  %47 = load i32, i32* @payload, align 4
  %48 = call i32 @strlen(i32 %47)
  %49 = bitcast %struct.sockaddr_in6* %7 to %struct.sockaddr*
  %50 = call i32 @sendto(i32 %45, i32 %46, i32 %48, i32 0, %struct.sockaddr* %49, i32 24)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @TAG, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %85

57:                                               ; preds = %44
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 24, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %62 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %63 = call i32 @recvfrom(i32 %60, i8* %61, i32 127, i32 0, %struct.sockaddr* %62, i32* %11)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @TAG, align 4
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %85

70:                                               ; preds = %57
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i32, i32* @TAG, align 4
  %75 = load i32, i32* %12, align 4
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %77 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %75, i8* %76)
  %78 = load i32, i32* @TAG, align 4
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %80 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %83 = sdiv i32 2000, %82
  %84 = call i32 @vTaskDelay(i32 %83)
  br label %44

85:                                               ; preds = %66, %53
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* @TAG, align 4
  %90 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @shutdown(i32 %91, i32 0)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %88, %85
  br label %13

96:                                               ; preds = %35
  %97 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @inet6_aton(i32, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @inet6_ntoa_r(i32, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
