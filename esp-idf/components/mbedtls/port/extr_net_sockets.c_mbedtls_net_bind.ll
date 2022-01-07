; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_bind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.addrinfo = type { i32, i64, i32, i32, i32, %struct.addrinfo* }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@MBEDTLS_NET_PROTO_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_UNKNOWN_HOST = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_SOCKET_FAILED = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_BIND_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_NET_PROTO_TCP = common dso_local global i32 0, align 4
@MBEDTLS_NET_LISTEN_BACKLOG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_LISTEN_FAILED = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_bind(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %14, align 8
  %16 = call i32 (...) @net_prepare()
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %119

20:                                               ; preds = %4
  %21 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %22 = load i32, i32* @AF_UNSPEC, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MBEDTLS_NET_PROTO_UDP, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @SOCK_DGRAM, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @SOCK_STREAM, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MBEDTLS_NET_PROTO_UDP, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @IPPROTO_UDP, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @IPPROTO_TCP, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @getaddrinfo(i8* %44, i8* %45, %struct.addrinfo* %11, %struct.addrinfo** %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @MBEDTLS_ERR_NET_UNKNOWN_HOST, align 4
  store i32 %49, i32* %5, align 4
  br label %119

50:                                               ; preds = %41
  %51 = load i32, i32* @MBEDTLS_ERR_NET_UNKNOWN_HOST, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %52, %struct.addrinfo** %13, align 8
  br label %53

53:                                               ; preds = %111, %50
  %54 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %55 = icmp ne %struct.addrinfo* %54, null
  br i1 %55, label %56, label %115

56:                                               ; preds = %53
  %57 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @socket(i32 %59, i32 %62, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* @MBEDTLS_ERR_NET_SOCKET_FAILED, align 4
  store i32 %70, i32* %10, align 4
  br label %111

71:                                               ; preds = %56
  %72 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %75, %struct.sockaddr_in** %14, align 8
  %76 = load i32, i32* @INADDR_ANY, align 4
  %77 = call i32 @htonl(i32 %76)
  %78 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %83 = bitcast %struct.sockaddr_in* %82 to %struct.sockaddr*
  %84 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @bind(i32 %81, %struct.sockaddr* %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %71
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @close(i32 %90)
  %92 = load i32, i32* @MBEDTLS_ERR_NET_BIND_FAILED, align 4
  store i32 %92, i32* %10, align 4
  br label %111

93:                                               ; preds = %71
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @MBEDTLS_NET_PROTO_TCP, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @MBEDTLS_NET_LISTEN_BACKLOG, align 4
  %100 = call i64 @listen(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @close(i32 %103)
  %105 = load i32, i32* @MBEDTLS_ERR_NET_LISTEN_FAILED, align 4
  store i32 %105, i32* %10, align 4
  br label %111

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %93
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %10, align 4
  br label %115

111:                                              ; preds = %102, %89, %69
  %112 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 5
  %114 = load %struct.addrinfo*, %struct.addrinfo** %113, align 8
  store %struct.addrinfo* %114, %struct.addrinfo** %13, align 8
  br label %53

115:                                              ; preds = %107, %53
  %116 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %117 = call i32 @freeaddrinfo(%struct.addrinfo* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %48, %18
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @net_prepare(...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
