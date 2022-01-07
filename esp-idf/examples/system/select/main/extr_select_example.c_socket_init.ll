; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/select/main/extr_select_example.c_socket_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/select/main/extr_select_example.c_socket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"DNS lookup failed: %d\00", align 1
@errno = common dso_local global i32 0, align 4
@socket_fd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to allocate socket.\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Failed to bind socket\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Socket connection failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @socket_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_init() #0 {
  %1 = alloca %struct.addrinfo, align 4
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 2
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1, i32 0, i32 3
  %10 = load i32, i32* @AF_INET, align 4
  store i32 %10, i32* %9, align 4
  %11 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = call i32 (...) @esp_netif_init()
  %13 = call i32 @getaddrinfo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.addrinfo* %1, %struct.addrinfo** %2)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %18 = icmp eq %struct.addrinfo* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %0
  %20 = load i32, i32* @TAG, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %78

23:                                               ; preds = %16
  %24 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @socket(i32 %26, i32 %29, i32 0)
  store i64 %30, i64* @socket_fd, align 8
  %31 = load i64, i64* @socket_fd, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32, i32* @TAG, align 4
  %35 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %37 = call i32 @freeaddrinfo(%struct.addrinfo* %36)
  br label %78

38:                                               ; preds = %23
  %39 = load i32, i32* @PF_INET, align 4
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = call i32 @htons(i32 80)
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @INADDR_ANY, align 4
  %44 = call i32 @htonl(i32 %43)
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* @socket_fd, align 8
  %48 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %49 = call i32 @bind(i64 %47, %struct.sockaddr* %48, i32 16)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = load i32, i32* @TAG, align 4
  %54 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %56 = call i32 @freeaddrinfo(%struct.addrinfo* %55)
  %57 = call i32 (...) @socket_deinit()
  br label %78

58:                                               ; preds = %38
  %59 = load i64, i64* @socket_fd, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @connect(i64 %59, i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load i32, i32* @TAG, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %73 = call i32 @freeaddrinfo(%struct.addrinfo* %72)
  %74 = call i32 (...) @socket_deinit()
  br label %78

75:                                               ; preds = %58
  %76 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %77 = call i32 @freeaddrinfo(%struct.addrinfo* %76)
  br label %78

78:                                               ; preds = %75, %68, %52, %33, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @esp_netif_init(...) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #2

declare dso_local i64 @socket(i32, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #2

declare dso_local i32 @socket_deinit(...) #2

declare dso_local i64 @connect(i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
