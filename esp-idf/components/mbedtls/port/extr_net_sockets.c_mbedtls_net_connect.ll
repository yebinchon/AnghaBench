; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@AF_UNSPEC = common dso_local global i32 0, align 4
@MBEDTLS_NET_PROTO_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_UNKNOWN_HOST = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_SOCKET_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_CONNECT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_connect(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call i32 (...) @net_prepare()
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %96

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 32)
  %21 = load i32, i32* @AF_UNSPEC, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MBEDTLS_NET_PROTO_UDP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @SOCK_STREAM, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MBEDTLS_NET_PROTO_UDP, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @IPPROTO_UDP, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @IPPROTO_TCP, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @getaddrinfo(i8* %43, i8* %44, %struct.addrinfo* %11, %struct.addrinfo** %12)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @MBEDTLS_ERR_NET_UNKNOWN_HOST, align 4
  store i32 %48, i32* %5, align 4
  br label %96

49:                                               ; preds = %40
  %50 = load i32, i32* @MBEDTLS_ERR_NET_UNKNOWN_HOST, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %51, %struct.addrinfo** %13, align 8
  br label %52

52:                                               ; preds = %88, %49
  %53 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %54 = icmp ne %struct.addrinfo* %53, null
  br i1 %54, label %55, label %92

55:                                               ; preds = %52
  %56 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @socket(i32 %58, i32 %61, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* @MBEDTLS_ERR_NET_SOCKET_FAILED, align 4
  store i32 %69, i32* %10, align 4
  br label %88

70:                                               ; preds = %55
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @connect(i32 %71, i32 %74, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %10, align 4
  br label %92

84:                                               ; preds = %70
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @close(i32 %85)
  %87 = load i32, i32* @MBEDTLS_ERR_NET_CONNECT_FAILED, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %84, %68
  %89 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 5
  %91 = load %struct.addrinfo*, %struct.addrinfo** %90, align 8
  store %struct.addrinfo* %91, %struct.addrinfo** %13, align 8
  br label %52

92:                                               ; preds = %80, %52
  %93 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %94 = call i32 @freeaddrinfo(%struct.addrinfo* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %47, %17
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @net_prepare(...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
