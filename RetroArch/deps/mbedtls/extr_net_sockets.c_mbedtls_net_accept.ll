; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_net_sockets.c_mbedtls_net_accept.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_net_sockets.c_mbedtls_net_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_ACCEPT_FAILED = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_SOCKET_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_BIND_FAILED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@MBEDTLS_ERR_NET_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@WSAEMSGSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_accept(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_storage, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [1 x i8], align 1
  %18 = alloca %struct.sockaddr_storage, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sockaddr_in*, align 8
  %21 = alloca %struct.sockaddr_in6*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 8, i32* %15, align 4
  store i32 4, i32* %16, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load i32, i32* @SO_TYPE, align 4
  %27 = bitcast i32* %13 to i8*
  %28 = call i64 @getsockopt(i32 %24, i32 %25, i32 %26, i8* %27, i32* %16)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @SOCK_DGRAM, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %5
  %39 = load i32, i32* @MBEDTLS_ERR_NET_ACCEPT_FAILED, align 4
  store i32 %39, i32* %6, align 4
  br label %178

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @SOCK_STREAM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  %49 = call i64 @accept(i32 %47, %struct.sockaddr* %48, i32* %15)
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 %50, i32* %12, align 4
  br label %63

53:                                               ; preds = %40
  %54 = bitcast [1 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %54, i8 0, i64 1, i1 false)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [1 x i8], [1 x i8]* %17, i64 0, i64 0
  %59 = load i32, i32* @MSG_PEEK, align 4
  %60 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  %61 = call i64 @recvfrom(i32 %57, i8* %58, i32 1, i32 %59, %struct.sockaddr* %60, i32* %15)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %53, %44
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = call i64 @net_would_block(%struct.TYPE_9__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  store i32 %71, i32* %6, align 4
  br label %178

72:                                               ; preds = %66
  %73 = load i32, i32* @MBEDTLS_ERR_NET_ACCEPT_FAILED, align 4
  store i32 %73, i32* %6, align 4
  br label %178

74:                                               ; preds = %63
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @SOCK_STREAM, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %134

78:                                               ; preds = %74
  store i32 1, i32* %19, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @connect(i32 %81, %struct.sockaddr* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @MBEDTLS_ERR_NET_ACCEPT_FAILED, align 4
  store i32 %87, i32* %6, align 4
  br label %178

88:                                               ; preds = %78
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 -1, i32* %95, align 4
  store i32 8, i32* %15, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr*
  %100 = call i64 @getsockname(i32 %98, %struct.sockaddr* %99, i32* %15)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %18, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @SOCK_DGRAM, align 4
  %106 = load i32, i32* @IPPROTO_UDP, align 4
  %107 = call i64 @socket(i64 %104, i32 %105, i32 %106)
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = icmp slt i32 %108, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %102
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SOL_SOCKET, align 4
  %117 = load i32, i32* @SO_REUSEADDR, align 4
  %118 = bitcast i32* %19 to i8*
  %119 = call i64 @setsockopt(i32 %115, i32 %116, i32 %117, i8* %118, i32 4)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112, %102, %88
  %122 = load i32, i32* @MBEDTLS_ERR_NET_SOCKET_FAILED, align 4
  store i32 %122, i32* %6, align 4
  br label %178

123:                                              ; preds = %112
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr*
  %128 = load i32, i32* %15, align 4
  %129 = call i64 @bind(i32 %126, %struct.sockaddr* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @MBEDTLS_ERR_NET_BIND_FAILED, align 4
  store i32 %132, i32* %6, align 4
  br label %178

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %74
  %135 = load i8*, i8** %9, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %177

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %14, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AF_INET, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %137
  %143 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %143, %struct.sockaddr_in** %20, align 8
  %144 = load i64*, i64** %11, align 8
  store i64 4, i64* %144, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load i64*, i64** %11, align 8
  %147 = load i64, i64* %146, align 8
  %148 = icmp ult i64 %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @MBEDTLS_ERR_NET_BUFFER_TOO_SMALL, align 4
  store i32 %150, i32* %6, align 4
  br label %178

151:                                              ; preds = %142
  %152 = load i8*, i8** %9, align 8
  %153 = load %struct.sockaddr_in*, %struct.sockaddr_in** %20, align 8
  %154 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64*, i64** %11, align 8
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @memcpy(i8* %152, i32* %155, i64 %157)
  br label %176

159:                                              ; preds = %137
  %160 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %160, %struct.sockaddr_in6** %21, align 8
  %161 = load i64*, i64** %11, align 8
  store i64 4, i64* %161, align 8
  %162 = load i64, i64* %10, align 8
  %163 = load i64*, i64** %11, align 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp ult i64 %162, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @MBEDTLS_ERR_NET_BUFFER_TOO_SMALL, align 4
  store i32 %167, i32* %6, align 4
  br label %178

168:                                              ; preds = %159
  %169 = load i8*, i8** %9, align 8
  %170 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %21, align 8
  %171 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64*, i64** %11, align 8
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @memcpy(i8* %169, i32* %172, i64 %174)
  br label %176

176:                                              ; preds = %168, %151
  br label %177

177:                                              ; preds = %176, %134
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %166, %149, %131, %121, %86, %72, %70, %38
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i64 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @net_would_block(%struct.TYPE_9__*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @socket(i64, i32, i32) #1

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
