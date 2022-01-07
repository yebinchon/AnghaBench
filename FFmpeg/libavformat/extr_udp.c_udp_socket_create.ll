; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_udp_socket_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_udp.c_udp_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.addrinfo = type { i32, i32, i32, %struct.addrinfo* }
%struct.sockaddr = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@IPPROTO_UDPLITE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.sockaddr_storage*, i32*, i8*)* @udp_socket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_socket_create(%struct.TYPE_5__* %0, %struct.sockaddr_storage* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  store i32 -1, i32* %11, align 4
  %18 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = bitcast i32* %20 to %struct.sockaddr*
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = bitcast i32* %27 to %struct.sockaddr*
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %25, %4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  br label %44

43:                                               ; preds = %35, %31
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i8* [ %42, %41 ], [ null, %43 ]
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SOCK_DGRAM, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @AI_PASSIVE, align 4
  %52 = call %struct.addrinfo* @ff_ip_resolve_host(%struct.TYPE_5__* %32, i8* %45, i32 %48, i32 %49, i32 %50, i32 %51)
  store %struct.addrinfo* %52, %struct.addrinfo** %12, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %54 = icmp ne %struct.addrinfo* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  br label %110

56:                                               ; preds = %44
  %57 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %57, %struct.addrinfo** %13, align 8
  br label %58

58:                                               ; preds = %86, %56
  %59 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %60 = icmp ne %struct.addrinfo* %59, null
  br i1 %60, label %61, label %90

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SOCK_DGRAM, align 4
  %71 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %72 = call i32 @ff_socket(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  br label %79

73:                                               ; preds = %61
  %74 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SOCK_DGRAM, align 4
  %78 = call i32 @ff_socket(i32 %76, i32 %77, i32 0)
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %90

83:                                               ; preds = %79
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 @ff_log_net_error(i32* null, i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83
  %87 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 3
  %89 = load %struct.addrinfo*, %struct.addrinfo** %88, align 8
  store %struct.addrinfo* %89, %struct.addrinfo** %13, align 8
  br label %58

90:                                               ; preds = %82, %58
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %110

94:                                               ; preds = %90
  %95 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %96 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @memcpy(%struct.sockaddr_storage* %95, i32 %98, i32 %101)
  %103 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %108 = call i32 @freeaddrinfo(%struct.addrinfo* %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %5, align 4
  br label %123

110:                                              ; preds = %93, %55
  %111 = load i32, i32* %11, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @closesocket(i32 %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %118 = icmp ne %struct.addrinfo* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %121 = call i32 @freeaddrinfo(%struct.addrinfo* %120)
  br label %122

122:                                              ; preds = %119, %116
  store i32 -1, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %94
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.addrinfo* @ff_ip_resolve_host(%struct.TYPE_5__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_socket(i32, i32, i32) #1

declare dso_local i32 @ff_log_net_error(i32*, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
