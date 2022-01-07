; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/sockets/tcp_client/main/extr_tcp_client.c_tcp_client_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/sockets/tcp_client/main/extr_tcp_client.c_tcp_client_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i8*, i8* }
%struct.sockaddr = type { i32 }

@HOST_IP_ADDR = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@PORT = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to create socket: errno %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Socket created, connecting to %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Socket unable to connect: errno %d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Successfully connected\00", align 1
@payload = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Error occurred during sending: errno %d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"recv failed: errno %d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Received %d bytes from %s:\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Shutting down socket and restarting...\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tcp_client_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_client_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in6, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %12

12:                                               ; preds = %1, %102
  %13 = load i32, i32* @HOST_IP_ADDR, align 4
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %15 = call i32 @inet6_aton(i32 %13, i32* %14)
  %16 = load i8*, i8** @AF_INET6, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @PORT, align 4
  %19 = call i8* @htons(i32 %18)
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** @AF_INET6, align 8
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @IPPROTO_IPV6, align 4
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %27 = call i32 @inet6_ntoa_r(i32 %25, i8* %26, i32 127)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @socket(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %12
  %35 = load i32, i32* @TAG, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %103

38:                                               ; preds = %12
  %39 = load i32, i32* @TAG, align 4
  %40 = load i32, i32* @HOST_IP_ADDR, align 4
  %41 = load i32, i32* @PORT, align 4
  %42 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = bitcast %struct.sockaddr_in6* %7 to %struct.sockaddr*
  %45 = call i32 @connect(i32 %43, %struct.sockaddr* %44, i32 24)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @TAG, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %103

52:                                               ; preds = %38
  %53 = load i32, i32* @TAG, align 4
  %54 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %88
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @payload, align 4
  %58 = load i32, i32* @payload, align 4
  %59 = call i32 @strlen(i32 %58)
  %60 = call i32 @send(i32 %56, i32 %57, i32 %59, i32 0)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @TAG, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %92

67:                                               ; preds = %55
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %70 = call i32 @recv(i32 %68, i8* %69, i32 127, i32 0)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @TAG, align 4
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %92

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* @TAG, align 4
  %82 = load i32, i32* %11, align 4
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %84 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %82, i8* %83)
  %85 = load i32, i32* @TAG, align 4
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %87 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %90 = sdiv i32 2000, %89
  %91 = call i32 @vTaskDelay(i32 %90)
  br label %55

92:                                               ; preds = %73, %63
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* @TAG, align 4
  %97 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @shutdown(i32 %98, i32 0)
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @close(i32 %100)
  br label %102

102:                                              ; preds = %95, %92
  br label %12

103:                                              ; preds = %48, %34
  %104 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @inet6_aton(i32, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @inet6_ntoa_r(i32, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @send(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

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
