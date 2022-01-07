; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_accept.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_ACCEPT_FAILED = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_SOCKET_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_BIND_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_accept(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [1 x i8], align 1
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sockaddr_in*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 4, i32* %15, align 4
  store i32 4, i32* %16, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SOL_SOCKET, align 4
  %25 = load i32, i32* @SO_TYPE, align 4
  %26 = bitcast i32* %13 to i8*
  %27 = call i64 @getsockopt(i32 %23, i32 %24, i32 %25, i8* %26, i32* %16)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @SOCK_STREAM, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @SOCK_DGRAM, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %5
  %38 = load i32, i32* @MBEDTLS_ERR_NET_ACCEPT_FAILED, align 4
  store i32 %38, i32* %6, align 4
  br label %151

39:                                               ; preds = %33, %29
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @SOCK_STREAM, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %48 = call i64 @accept(i32 %46, %struct.sockaddr* %47, i32* %15)
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 %49, i32* %12, align 4
  br label %61

52:                                               ; preds = %39
  %53 = bitcast [1 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %53, i8 0, i64 1, i1 false)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [1 x i8], [1 x i8]* %17, i64 0, i64 0
  %58 = load i32, i32* @MSG_PEEK, align 4
  %59 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %60 = call i32 @recvfrom(i32 %56, i8* %57, i32 1, i32 %58, %struct.sockaddr* %59, i32* %15)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %52, %43
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = call i64 @net_would_block(%struct.TYPE_7__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  store i32 %69, i32* %6, align 4
  br label %151

70:                                               ; preds = %64
  %71 = load i32, i32* @MBEDTLS_ERR_NET_ACCEPT_FAILED, align 4
  store i32 %71, i32* %6, align 4
  br label %151

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @SOCK_STREAM, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %131

76:                                               ; preds = %72
  store i32 1, i32* %19, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %81 = load i32, i32* %15, align 4
  %82 = call i64 @connect(i32 %79, %struct.sockaddr* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @MBEDTLS_ERR_NET_ACCEPT_FAILED, align 4
  store i32 %85, i32* %6, align 4
  br label %151

86:                                               ; preds = %76
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 -1, i32* %93, align 4
  store i32 4, i32* %15, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  %98 = call i64 @getsockname(i32 %96, %struct.sockaddr* %97, i32* %15)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %86
  %101 = load i32, i32* @AF_INET, align 4
  %102 = load i32, i32* @SOCK_DGRAM, align 4
  %103 = load i32, i32* @IPPROTO_UDP, align 4
  %104 = call i64 @socket(i32 %101, i32 %102, i32 %103)
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = icmp slt i32 %105, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %100
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SOL_SOCKET, align 4
  %114 = load i32, i32* @SO_REUSEADDR, align 4
  %115 = bitcast i32* %19 to i8*
  %116 = call i64 @setsockopt(i32 %112, i32 %113, i32 %114, i8* %115, i32 4)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109, %100, %86
  %119 = load i32, i32* @MBEDTLS_ERR_NET_SOCKET_FAILED, align 4
  store i32 %119, i32* %6, align 4
  br label %151

120:                                              ; preds = %109
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  %125 = load i32, i32* %15, align 4
  %126 = call i64 @bind(i32 %123, %struct.sockaddr* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @MBEDTLS_ERR_NET_BIND_FAILED, align 4
  store i32 %129, i32* %6, align 4
  br label %151

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %72
  %132 = load i8*, i8** %9, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %150

134:                                              ; preds = %131
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %20, align 8
  %135 = load i64*, i64** %11, align 8
  store i64 4, i64* %135, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %136, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @MBEDTLS_ERR_NET_BUFFER_TOO_SMALL, align 4
  store i32 %141, i32* %6, align 4
  br label %151

142:                                              ; preds = %134
  %143 = load i8*, i8** %9, align 8
  %144 = load %struct.sockaddr_in*, %struct.sockaddr_in** %20, align 8
  %145 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64*, i64** %11, align 8
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @memcpy(i8* %143, i32* %146, i64 %148)
  br label %150

150:                                              ; preds = %142, %131
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %140, %128, %118, %84, %70, %68, %37
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i64 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @net_would_block(%struct.TYPE_7__*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
